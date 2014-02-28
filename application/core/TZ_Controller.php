<?php

require(APPPATH.'third_party/smarty'.TZ_SMATY_VERSION.'/Smarty.class.php');

/**
 *
 * 自定义 控制器 
 */
class TZ_Controller extends CI_Controller {
    public $_smarty = null;
    
    
    public function __construct(){
	parent::__construct();
	$this->_init_smarty();
	$this->_init_config();
    $this->setDefaultSEO();
	
    }
    
    protected function _init_smarty(){
	$this->_smarty = new Smarty();
	
	if(ENVIRONMENT == 'production'){
	    //运行一段时间后再修改
	    //$this->_smarty->compile_check = false;
	    $this->_smarty->compile_check = true;
	}else{
	    $this->_smarty->compile_check = true;
	}
	
	$this->_smarty->setTemplateDir(APPPATH.'templates'.DS);
	$this->_smarty->setCompileDir(APPPATH.'templates_c'.DS);
	//$this->_smarty->setPluginsDir(APPPATH.'plugins'.DS);
	$this->_smarty->setCacheDir(APPPATH.'cache'.DS);
	$this->_smarty->setConfigDir(APPPATH.'config'.DS);
    }
    
    protected function _init_config(){
	$this->_smarty->assign('NO_COVER_IMG',config_item('no_cover_image'));
    }
    
    
    /**
     *
     * @param type $property
     * @param type $value 
     */
    protected function assign($property, $value) {
	$this->_smarty->assign($property, $value);
    }
    public function setTitle($title = ''){
        $this->assign('TITLE',$title);
    }
    
    public function setSEO($title = '', $keywords = '', $desc = ''){
	$this->assign('TITLE',$title);
	$this->assign('KEYWORDS',$keywords);
	$this->assign('DESCRIPTION',$desc);
    }
    
    public function setDefaultSEO(){
	$this->assign('TITLE','万达奴官方网站');
	$this->assign('KEYWORDS','万达奴官方网站、万达奴时尚休闲、万达奴户外休闲、万达奴鞋子、男装、服装、女装、运动服、运动鞋、万达奴专卖店、万达奴网上专卖店、万达奴连锁加盟、招商加盟、加盟万达奴、万达奴开店、万达奴正品、万达奴网上商城、万达奴网站');
	$this->assign('DESCRIPTION','万达奴官方网站、万达奴时尚休闲、万达奴户外休闲、万达奴鞋子、男装、服装、女装、运动服、运动鞋、万达奴专卖店、万达奴网上专卖店、万达奴连锁加盟、招商加盟、加盟万达奴、万达奴开店、万达奴正品、万达奴网上商城、万达奴网站');
    }
    /**
     *
     * @param type $turn 
     */
    public function setCaching($turn = false){
	if($turn === Smarty::CACHING_LIFETIME_SAVED){
	    ////表示 要自定义缓存时间
	}else{
	    $turn = $turn === true ? true : false;
	}

	$this->_smarty->caching = $turn;
    }

    
    /**
     * 设置缓存时间
     * @param type $sec 
     */
    public function setCacheLifeTime($sec = 3600){
	$this->_smarty->cache_lifetime = $sec;
    }
    
    /**
     *
     * @param type $tplName
     * @param type $cache_id
     * @return type 
     */
    public function isCached($pageTplName,$cache_id = false){
	if(false != $cache_id){
	    return $this->_smarty->isCached(TZ_TPL_PATH.$pageTplName.'.tpl',$cache_id);
	}else{
	    return $this->_smarty->isCached(TZ_TPL_PATH.$pageTplName.'.tpl');
	}
    }
    
    /**
     *
     * @param type $page
     * @return boolean 
     */
    protected function fetch($pageTplName = null) {
	if (!is_null($pageTplName)) {
	    return $this->_smarty->fetch(TZ_TPL_PATH.$pageTplName.'.tpl');
	}
	return false;
    }
    
    /**
     *
     * @param type $pageTplName 
     */
    public function display($pageTplName){
	$this->_smarty->display(TZ_TPL_PATH.$pageTplName.'.tpl');
    }
    
    
    /**
     *
     * @param type $data
     * @param type $isJsonHead 
     */
    public function sendJson($data, $isJsonHead = true) {
        if($isJsonHead)
            header("Content-Type:application/json; charset=utf-8");
         exit(json_encode($data));
    }
    
    
    /**
     *
     * @param type $respCode
     * @param type $body
     * @param type $redirectUrl
     * @param type $isJsonHead 
     */
    public function sendFormatJson($respCode,$body,$redirectUrl = '',$isJsonHead = true){
        if($isJsonHead)
                header("Content-Type:application/json; charset=utf-8");

        $data = array(
            'code' => $respCode,
            'body' => $body
        );

        //重定向URL
        if('' != $redirectUrl){
            $data['redirectUrl'] = $redirectUrl;
        }

        exit(json_encode($data));
    }
}