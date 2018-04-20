<?php
namespace Me\Controller;
use Think\Controller;

class IndexController extends Controller {
	
    public function index()
	{
		return $this->display('Templates@Default/Home/Index/index');
	}
	
}