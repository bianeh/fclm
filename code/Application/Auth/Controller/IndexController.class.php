<?php
namespace Auth\Controller;

use Think\Controller;

class IndexController extends Controller {

    public function noAccess()
	{
		$this->display();
    }

}