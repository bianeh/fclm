<?php
namespace Train\Model;
use Think\Model;

class AKnowledgecatModel extends Model {

    protected $tableName = 'knowledge_catagroy';

    protected $_validate = array(
//        ['name','require','名称不能为空!'],
//        ['code','require','标识不能为空!'],
    );

    public function index() {
        $category = $this->select();
        return $this->_formatData($category);
    }

    public function addCategory(Array $category) {
        if(!is_array($category)) {
            return false;
        }
        $category['createtime'] = isset($category['createtime']) ? $category['createtime'] : time();
        if (!$this->create($category, 1)) {
            return false;
        }else{
            return $this->add();
        }
    }

    public function showCategory(Array $param) {
        $category = $this->find($param["find"]);
        if(empty($category)) {
            return false;
        }
        return $category;
    }

    public function editCategory(Array $data) {
        if(!is_array($data)) {
            return false;
        }
        if (!$this->create($data,2)) {
            return false;
        }else{
//            var_dump($data,111);exit;
            return $this->save($data);
        }
    }

    public function deleteById($id) {
        $res = $this->where("pid =".$id)->find();
        $newsObj = new \Train\Model\AKnowledgesModel;
        $newRow = $newsObj->where("categoryid =".$id)->find();

        if(!empty($res) || $newRow){//检查是否有子目录以及分类下是否有新闻
            return false;
        }
        return $this->delete($id);
    }

    private function _formatData(Array $data) {
        foreach ($data as $key => $value) {
            $data[$key]['time'] = date("Y-m-d H:i:s", $value["createtime"]);
        }
        return $data;
    }

    public function _formatLine(Array $data){
        $levelLine = [
            '1' => '&nbsp;&nbsp;',
            '2' => '&nbsp;&nbsp;&nbsp;&nbsp;',
            '3' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
            '4' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
            '5' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
            '6' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
        ];
        foreach ($data as $key => $value) {
            $data[$key]['line'] = $levelLine[$value['level']];
        }
        return $data;
    }
}
