<?php
namespace Product\Controller;
use Think\Controller;
use Product\Model\AProductNetworthModel;
use Common\Model\AProductModel;
use Common\Util\Util;
use PHPExcel;

class NetworthController extends Controller {
	
    /**
	 * 净值管理页面
	 */
    public function index(){

    	$where = Util::getSearchWhere(['a_product.productno'=>'productno'],['a_product.name'=>'name']);

    	$aProductModel = new AProductModel;
    	$count      = $aProductModel->where('catagroyida in (2,3)')->count();// 查询满足要求的总记录数
    	$where['catagroyida']=2;

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',C("PAGE_THEME"));
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$products = $aProductModel->field([
				'a_product.*',
				'a_product_catagroy_a.name as cata_a_name',
				'a_product_catagroy_b.name as cata_b_name',
				'a_product_catagroy_c.name as cata_c_name',
				])->where($where)
			->join('LEFT JOIN a_product_catagroy_a on a_product_catagroy_a.id=a_product.catagroyida')
			->join('LEFT JOIN a_product_catagroy_b on a_product_catagroy_b.id=a_product.catagroyidb')
			->join('LEFT JOIN a_product_catagroy_c on a_product_catagroy_c.id=a_product.catagroyidc')
			->order('a_product.createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

		foreach($products as &$product){
			$product['createtime'] = date('Y-m-d H:i:s',$product['createtime']);
			$product['catagroyDes'] = $product['cata_a_name'].'/'.$product['cata_b_name'].'/'.$product['cata_c_name'];
			$product['productstatusDes'] = AProductModel::formatProductStatus($product['productstatus']);
		}

		$this->assign('totalProducts',$count);
		$this->assign('products',$products);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }

    /**
     * 查看某产品净值页面
     */
    public function showNetworth($id){
        $aProductModel = new AProductModel;
        $product = $aProductModel->find($id);
        if(!$aProductModel->isFloatProduct()){
            $this->error('不是浮动收益类产品，不能查看产品净值');
        }

        $aProductNetworthModel = new AProductNetworthModel;
        $count      = $aProductNetworthModel->where(['productid'=>$id])->count();// 查询满足要求的总记录数

        $Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('theme',C("PAGE_THEME"));
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $networths = $aProductNetworthModel->where(['productid'=>$id])->order('datetime')->limit($Page->firstRow.','.$Page->listRows)->select();

        foreach($networths as &$networth){
            $networth['createtime'] = date('Y-m-d H:i:s',$networth['createtime']);
            $networth['updatetime'] = empty($networth['updatetime'])?'':date('Y-m-d H:i:s',$networth['updatetime']);
        }

        $charts = $aProductNetworthModel->where(['productid'=>$id])->order('datetime')->select();
        $chartsData = [];
        foreach($charts as $chart){
        	$chartsData[] = [
        		'name'	=>$chart['datetime'],
        		'value'	=>[
        			$chart['datetime'],
        			$chart['networth']
        		],
        	];
        }

        $this->assign('totalProducts',$count);
        $this->assign('networths',$networths);// 赋值数据集
        $this->assign('chartsData',json_encode($chartsData));
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }

    /**
     * 展示编辑单个净值的页面
     */
    public function editNetworthPage($id){
    	$networthModel = new AProductNetworthModel;
    	$networth = $networthModel->find($id);

    	$this->assign('networth',$networth);
    	$this->display();
    }

    /**
     * 净值编辑
     */
    public function edit(){
    	$networthModel = new AProductNetworthModel;
    	if(!$networthModel->create($_POST,2)){
    		$this->error($networthModel->getError());
    	}

    	$res = $networthModel->save();
    	if($res !== false){
    		$this->success('编辑成功',U('Product/Networth/showNetworth/',['id'=>I('productid')]));
    	}else{
	    	$this->error('编辑失败');
    	}
    }

    /**
     * 更新今日净值
     */
    public function importTodayNetworth(){
    	$upload = new \Think\Upload();
        $upload->maxSize = 3145728;
        $upload->exts = array('xls', 'xlsx');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/networth/';
        $info = $upload->upload();
        if (!$info) {
            $this->ajaxReturn(['status'=>0,'error_info'=>$upload->getError()]);
        } else {
            $filepath = './Uploads' . $info['file']['savepath'] . $info['file']['savename'];
        }

        $res = $this->readXlsFileAndUpdateNetworth($filepath);

    	$this->ajaxReturn(['status'=>1,'data'=>$res]);
    }

    /**
     * 读取上传的文件，并更新今日净值
     */
    private function readXlsFileAndUpdateNetworth($filepath){
    	require THINK_PATH .'../vendor/phpoffice/phpexcel/Classes/PHPExcel.php';
    	$objPHPExcel = \PHPExcel_IOFactory::load($filepath);
    	$mainSheet = $objPHPExcel->getActiveSheet();
    	//开始循环取数据
    	$i = 2;
    	$returnData = [
    			'status'=>1,
    			'data'=>[]
    		];
    	while(1){
    		//产品编号
    		$productno = $mainSheet->getCell('A'.$i)->getValue();
    		//产品名称
    		$productname = $mainSheet->getCell('B'.$i)->getValue();
    		//产品净值日期
    		$datetime = $mainSheet->getCell('C'.$i)->getValue();
    		//产品净值
    		$networth = $mainSheet->getCell('D'.$i)->getValue();

    		$year1900 = strtotime('1900-1-1');
    		$now = date('Y-m-d',($datetime-1)*24*60*60+$year1900);

    		if(empty($productno) || empty($productname) || empty($datetime) || empty($networth)){
    			break;
    		}

    		//保存产品更新数据
    		$returnData['data'][] = $this->saveSigleDate($productno,$productname,$now,$networth);

    		$i++;
    	}

    	$success = 0;
    	$failed = 0;
    	foreach ($returnData['data'] as $value) {
    		if($value['status']==0){
    			$failed ++;
    		}else{
    			$success ++;
    		}
    	}

    	$returnData['success'] = $success;
    	$returnData['failed'] = $failed;

    	$this->ajaxReturn($returnData);
    }

    private function saveSigleDate($productno,$productname,$now,$networth){
    	$productModel = new AProductModel;
    	$res = $productModel->where(['productno'=>$productno])->find();
    	if(empty($res)){
    		return ['status'=>0,'productno'=>$productno,'error_info'=>'产品编号不存在'];
    	}

    	$networthModel = new AProductNetworthModel;
    	$networthModel->where(['productid'=>$productModel->id,'datetime'=>$now])->delete();
    	$data = [
    		'productid'	=>$productModel->id,
    		'datetime'	=>$now,
    		'networth'	=>(float)$networth,
    	];
    	if(!$networthModel->create($data)){
    		return ['status'=>0,'productno'=>$productno,'error_info'=>$networthModel->getError()];
    	}
    	$insertId = $networthModel->add();
    	if($insertId){
    		return ['status'=>1,'productno'=>$productno,'insertId'=>$insertId];
    	}else{
    		return ['status'=>0,'productno'=>$productno,'error_info'=>'操作错误'];
    	}
    }
	
}