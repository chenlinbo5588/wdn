<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class News extends TZ_Admin_Controller {
    public function __construct(){
	parent::__construct();
        $this->assign('sideMenuName','新闻公告管理');
    }
   
    public function index()
    {
        
        try {
            $this->load->model("News_Model");
            $config['total_rows'] = $this->News_Model->getCount();
            $config['per_page'] = 2;
            
            
            if(empty($_GET['page'])){
                $_GET['page'] = 1;
            }
            $pager = pageArrayGenerator($_GET['page'],$config['per_page'],$config['total_rows'],url_path('news','index',array(),true));
            
            $this->assign('page',$pager);
            //$condition['select'] = 'a,b';
            $condition['pager'] = array(
                'page_size' => $config['per_page'],
                'current_page' => isset($_GET['page']) ? intval($_GET['page']) : 1
            );
            $data = $this->News_Model->getList($condition);
            foreach($data as $k => $v){
                $data[$k]['op'] = array(
                    'edit' => '<a href="'.url_path('news','edit',array('id'=>$v['news_id']),true).'">编辑</a>&nbsp;'
                );
                
                if($v['is_delete'] == '删除'){
                    $data[$k]['op']['delete'] = '<a href="'.url_path('news','undelete',array('id'=>$v['news_id']),true).'">恢复</a>&nbsp;';
                }else{
                    
                    if($v['status'] == '已发布'){
                        $data[$k]['op']['publish'] = '<a href="'.url_path('news','unpublish',array('id'=>$v['news_id']),true).'">取消发布</a>&nbsp;';
                    }else{
                        $data[$k]['op']['publish'] = '<a href="'.url_path('news','publish',array('id'=>$v['news_id']),true).'">发布</a>&nbsp;';
                    }
                
                    $data[$k]['op']['delete'] = '<a class="delete" href="javascript:void(0);" data-href="'.url_path('news','delete',array('id'=>$v['news_id']),true).'">删除</a>&nbsp;';
                }
            }
            
            $this->assign('list',$data);
        }catch(Exception $e){
            
        }
        
        $this->setMainPage('news_list');
        $this->displayAdmin();
        
    }
    
    public function _setStatus($key,$value){
        
        $this->load->model("News_Model");
        $where = "news_id = " . $_GET['id'];
        $data[$key] = $value;
        if($value == '删除'){
            $data['status'] = '未发布';//自动变成未发布
        }
        
        $data['updatetime'] = date("Y-m-d H:i:s");

        $string = $this->db->update_string($this->News_Model->_tableName, $data,$where);
        $this->db->query($string);
    }
    
    public function delete(){
        $this->_setStatus('is_delete','删除');
        redirect(url_path('news','index'));
    }
    public function undelete(){
        $this->_setStatus('is_delete','正常');
        redirect(url_path('news','index'));
    }
    
    public function unpublish(){
        $this->_setStatus('status','未发布');
        redirect(url_path('news','index'));
    }
    
    public function publish(){
        $this->_setStatus('status','已发布');
        redirect(url_path('news','index'));
    }
    
    
    public function add(){
        
        $this->assign('action','add');
        $this->setMainPage('news_add');
        $this->displayAdmin();
    }
    
    
    public function _getShopInfo($shopId){
        
        try{
            $this->load->model("News_Model");
            
            $condition['where'] = array('news_id ' => $shopId );
            
            $info = $this->News_Model->getList($condition);
            
            //print_r($shop[0]);
            $this->assign("info",$info[0]);
            
        }catch(Exception $e){
            //
        }
    }
    
    public function edit(){
        
        $this->_getShopInfo(intval($_GET['id']));
        
        $this->assign('action','edit');
        $this->setMainPage('news_add');
        $this->displayAdmin();
    }
    
    public function save(){
        
        $message = array();
        $message['feedback'] = '';
        $message['className'] = 'danger';
        try {
            $this->load->model('News_Model');
            
            $now = date("Y-m-d H:i:s");
            $_POST['updatetime'] = $now;
            
            if(!isset($_POST['news_id'])){
                $_POST['status'] = '新增';
                $_POST['createtime'] = $now;
                
                $flag = $this->News_Model->add($_POST);
                $action = "创建";
            }else{
                $action = "修改";
                $flag = $this->News_Model->update($_POST);
            }
            
            if($flag){
                $message['feedback'] = $action.'成功';
                $message['className'] = 'success';
            }else{
                $message['feedback'] = $action.'失败,请重新尝试';
            }
            
        }catch(Exception $e){
            $message['feedback'] = '系统错误,请重新尝试('.$e->getCode().')';
        }
       
        if($action == '修改'){
            $this->assign('action','edit');
            $this->_getShopInfo(intval($_POST['news_id']));
        }
        
        $this->assign('message',$message);
        $this->setMainPage('news_add');
        $this->displayAdmin();
        
    }
    
}
