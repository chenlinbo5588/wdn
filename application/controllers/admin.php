<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin extends TZ_Admin_Controller {
    public function __construct(){
	parent::__construct();

    }
   
    public function index()
    {
        $this->setMainPage('index');
        $this->displayAdmin();
    }
    
}
