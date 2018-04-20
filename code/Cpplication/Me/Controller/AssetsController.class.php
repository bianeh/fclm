<?php
namespace Me\Controller;
use Think\Controller;

class AssetsController extends Controller {
	
    public $template;
	
	public function __construct()
	{
		parent::__construct();
		return $this->template = 'Templates@'.session(C('AGENT_TEMP_KEY'));
	}
	
    public function index()
	{
		return $this->display($this->template.'/Me/Assets/index');
	}
	
}