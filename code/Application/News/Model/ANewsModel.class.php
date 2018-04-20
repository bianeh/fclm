<?php

namespace News\Model;

use Think\Model;

class ANewsModel extends Model {

    protected $tableName = 'a_news';
    protected $_validate = array(
        ['title','require','标题不能为空!'],
        ['author','require','作者不能为空!'],
        ['categoryid','require','所属分类不能为空!'],
        ['editorValue','require','内容不能为空!'],
    );

    public function index(Array $index) {
        if(!is_array($index)) {
			return false;
		}
        $news = $this->where($index["where"])
                ->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
                ->select();
        return $this->_formatData($news);
    }

    public function addNews(Array $base,$content = '',$thumbPath) {
        if (!is_array($base) || empty($content)) {
            return false;
        }
        $time = time();
        $base['publishtime'] = isset($base['publishtime']) ? $base['publishtime'] : $time;
        $base['createtime'] = isset($base['createtime']) ? $base['createtime'] : $time;
        $base['weight'] = $this->MaxRanking()+1;
        if (!$this->create($base, 1)) {
            return false;
        } else {
            $insertId = $this->add();
            $imgs = $this->getImgPaths(html_entity_decode($content));
            if($base['style'] == 2 && count($imgs) == 0){
                return false;
            }
            if($thumbPath){
                $imgs[] = ['path' => $thumbPath,'name' => 'thumb_'.$base['title'],'type' => '1'];
                //保存图片地址
                $this->saveImgPaths($imgs,$insertId);
            }  else {
                $this->saveImgPaths($imgs,$insertId);
            }
            $newsContent = M("a_news_content"); 
            $newsContent->newsid = $insertId;
            $newsContent->content = $content;
            return $newsContent->add();
        }
    }
    
    public function showNews(Array $param) {
        $_news = $this->query("select *,a.id AS newsid,b.id AS contentid from __PREFIX__a_news AS a LEFT JOIN __PREFIX__a_news_content AS b ON a.id=b.newsid WHERE a.id = '".$param['find']."' AND a.isdeleted=0 LIMIT 1");
        if(empty($_news))
            return false;
        $news = $_news[0];
        $news['id'] = $news['newsid'];
        $news['content'] = html_entity_decode($news['content']);
        $attachement = $this->query("SELECT * FROM __PREFIX__a_news_attachement WHERE type=1 AND newsid=".$_news[0]['newsid']);
        if(!empty($attachement)){
            $attachement = $attachement[0];
            unset($attachement['id']);
            unset($attachement['newsid']);
            $news = array_merge($news, $attachement);
        }
        return $news;
    }
    
    public function editNews(Array $data,$content,$thumbPath) {
        if(!is_array($data) || empty($content)) {
			return false;
		}
		if (!$this->create($data,2)) {
			return false;
		}else{
            $newsContent = M("a_news_content");
            $arraResult = false;
            $imgs = $this->getImgPaths(html_entity_decode($content));
            if($data['style'] == 2 && count($imgs) == 0){
                return false;
            }
            if($thumbPath){
                $imgs[] = ['path' => $thumbPath,'name' => 'thumb_'.$data['title'],'type' => '1'];
            }
            $arraResult = $this->saveImgPaths($imgs,$data['id']);
            $baseResult = $this->save($data);
            $contentResult = $newsContent->where('newsid='.$data['id'])->save(['content' => $content]);
            if($baseResult || $contentResult || $arraResult){
                return true;
            }  else {
                return false;
            }
		}
    }
    
    /*
     * 删除新闻附件记录
     */
    public function deleteAtta($newsid,$type = 1,$filterPaths = []) {
        $this->unlinkfile($newsid,$filterPaths);
        if(is_array($newsid)){
            $strIds = implode(',', $newsid);
            $this->execute("DELETE FROM __PREFIX__a_news_attachement WHERE newsid IN($strIds) AND type IN($type)");
        }else{
            $this->execute("DELETE FROM __PREFIX__a_news_attachement WHERE newsid=$newsid AND type IN($type)");
        }
    }
    
    /*
     * 读取附件path,并unlinks
     */
    public function unlinkfile($newsid,$filterPaths) {
        $attachement = M("a_news_attachement");
        if(is_array($newsid)) {
            $ids = implode(',', $newsid);
            $atta = $attachement->where("newsid IN($ids)")->select();
            
        }else{
            $atta = $attachement->where("newsid = $newsid")->select();
        }
        foreach ($atta as $key => $value) {
            if(!in_array($value['path'], $filterPaths)){
                unlink(ltrim($value['path'], '/'));
            }
        }
    }

    public function deleteById($id) {
        if($this->delete($id)){
            $this->deleteAtta($id,'1,2');
            $content = M("a_news_content"); 
            $content->where('newsid='.$id)->find();
            return $content->delete();
        }
        return false;
    }
    
    public function batchDelete($ids) {
        $strIds = implode(',', $ids);
        if($this->where("id IN ($strIds)")->delete()){
            $this->deleteAtta($ids,'1,2');
            $content = M("a_news_content"); 
            $content->where("newsid IN ($strIds)")->find();
            return $content->delete();
        }
        return false;
    }
    
    public function delete($ids) {
        $str = implode(',', $ids);
        return $this->where('id IN('.$str.')')->save(['isdeleted' => '1']);
    }
    
    private function _formatData(Array $data) {
        foreach ($data as $key => $value) {
            $data[$key]['time'] = date("Y-m-d H:i:s", $value["createtime"]);
        }
        return $data;
    }
    /*
     * 从文本内容抓取图片Path
     * @return array
     */
    private function getImgPaths($content) {
        preg_match_all("/<img.*?src=[\"|\']?(.*?)[\"|\']?\s.*?title=[\"|\']?(.*?)[\"|\'].*?>/", $content, $matches);
        $arr = [];
        if(isset($matches[1])){
            foreach ($matches[1] as $key => $value) {
                $arr[$key]['path'] = $value;
                $arr[$key]['name'] = @$matches[2][$key];
                $arr[$key]['type'] = '2';
            }
        }
        return $arr;
    }
    
    private function saveImgPaths(Array $imgs,$newsid) {
        $newsContent = M("a_news_attachement"); 
        $time = time();
        foreach ($imgs as $key => $value) {
            $imgs[$key]['createtime'] = $time;
            $imgs[$key]['newsid'] = $newsid;
            $filterPaths[] = $value['path'];
        }
        $this->deleteAtta($newsid,'1,2',$filterPaths);
        return $newsContent->addAll($imgs);
    }
    
    /**
     * 查询新闻中最大的排名数
     */
    public function MaxRanking() {
        $r = $this->field("max(weight) AS w")->find();
        return $r['w'];
    }
    
    /**
     * 更新新闻排序位置
     * @param array $args 需要更新的newsid => weight
     */
    public function updatePostion($args) {
        $this->startTrans();
        if(isset($_POST['checkdata']) &&  $_POST['checkdata']){
            $checkdata = json_decode($_POST['checkdata'],true);
            $order = I("post.orderby");
            if($order == "DESC"){
                $compareMark = '<';
            }  else {
                $compareMark = '>';
            }
            $key = array_keys($checkdata)[0];
            $val = $checkdata[$key];
            $res = $this->field("id,weight")->where("weight $compareMark $val AND isdeleted=0")->order("weight $order")->find();
            if(!is_null($res)){
                $args[$key] = $res['weight'];
                $args[$res['id']] = $val;
            }
        }
        if(is_null($args)){
            return false;
        }
        foreach ($args as $key => $value) {
            if($key != 'undefined'){
                $res[] = $this->where("id=$key")->save(['weight'=>$value]);
            }
        }
        if(!in_array(false, $res)){
            $this->commit();
            return true;
        }else{
            $this->rollback();
            return false;
        }
    }
    
    /**
     * 恢复新闻
     * @param array $ids 需要恢复的新闻id
     * @return Boolean
     */
    public function recovery($ids) {
        $str = implode(',', $ids);
        return $this->where('id IN('.$str.')')->save(['isdeleted' => '0']);
    }
}
