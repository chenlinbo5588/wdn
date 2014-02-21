<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Index extends TZ_Controller {
    public function __construct(){
        parent::__construct();
        
        $this->assign('cssFiles',array('site'));
    }
    
    public function index()
    {
        $this->setTitle('万达奴官方网站-首页');
        $this->display('index');
    }
    
    
    public function brand()
    {
        $this->setTitle('品牌形象');
        $this->display("brand");
    }
    
    public function contact_us()
    {
        $this->assign('top_menu','联系我们');
        $this->assign('contentWrapper','wrapper_contact_us');
        $this->setTitle('联系我们');
        $this->display("contact_us");
    }
    
    public function advertise()
    {
        $this->setTitle('人才招聘');
        $this->display("advertise");
    }
    
    
    public function join_us()
    {
        $this->setTitle('加盟');
        $this->display("join_us");
        
    }
    
}
