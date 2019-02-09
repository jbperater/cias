<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH . '/libraries/BaseController.php';
/**
 * Class : Login (LoginController)
 * Login class to control to authenticate user credentials and starts user's session.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Main extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
    }   

    /**
     * Index Page for this controller.
     */
    public function index()
    {
        $this->isLoggedIn();
    }
    
    public function viewAddNewEquipment(){

        if ($this->session->userdata('name')== TRUE){
            $this->global['name'] =$this->session->userdata('name');
            $this->global['role'] =$this->session->userdata('role');
            $this->global['role_text'] =$this->session->userdata('roleText');
            $this->global['name'] =$this->session->userdata('name');
            $this->global['pageTitle'] = 'Mewu : Add Equipments';
            $this->loadViews("admin/addEquipment", $this->global, NULL, NULL);
        }
        else{
            $this->isLoggedIn();
        }
        
    }

    public function viewAddNewEventEquipment(){
        if ($this->session->userdata('name')== TRUE){
            $this->global['name'] =$this->session->userdata('name');
            $this->global['role'] =$this->session->userdata('role');
            $this->global['role_text'] =$this->session->userdata('roleText');
            $this->global['name'] =$this->session->userdata('name');
            $this->global['pageTitle'] = 'Mewu : Add Equipments';
            $this->loadViews("admin/addEventEquipment", $this->global, NULL, NULL);
        }
        else{
            $this->isLoggedIn();
        }
    }

    public function viewAddNewVenue(){
        if ($this->session->userdata('name')== TRUE){
            $this->global['name'] =$this->session->userdata('name');
            $this->global['role'] =$this->session->userdata('role');
            $this->global['role_text'] =$this->session->userdata('roleText');
            $this->global['name'] =$this->session->userdata('name');
            $this->global['pageTitle'] = 'Mewu : Add Equipments';
            $this->loadViews("admin/addVenue", $this->global, NULL, NULL);
        }
        else{
            $this->isLoggedIn();
        }
    }
}

?>