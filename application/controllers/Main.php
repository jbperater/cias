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
        $this->load->model('main_model');
    }   

    /**
     * Index Page for this controller.
     */
    public function index()
    {
        $this->isLoggedIn();
    }
    
    public function viewAddNewEquipment(){

        $this->load->model('user_model');

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role');
        $this->global['pageTitle'] = 'CodeInsect : Dashboard';
        
        $this->loadViews("admin/addEquipment", $this->global, NULL, NULL);
    }
    public function viewAddJobRequest(){

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add Repair Request';
        $this->loadViews("jobRequest", $this->global, NULL, NULL);
    }

    public function viewAddNewVenue(){

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add New Venue';
        $this->loadViews("admin/addVenue", $this->global, NULL, NULL);
    }

    public function viewAddNewDepartment(){

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add New Department';
        $this->loadViews("admin/addDepartment", $this->global, NULL, NULL);
    }

    public function viewAddNewEventEquipment(){

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add New Venue';
        $this->loadViews("admin/addEventEquipment ", $this->global, NULL, NULL);
    }

    public function viewAddNewEventRequest(){

        $this->load->model('main_model');
        $data['equipment']=$this->main_model->getEventEquipment();
        $data['venuedata']=$this->main_model->getVenue();
        $data['option']=$this->main_model->getDepartment();
        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add New Venue';
        $this->loadViews("addEventRequest", $this->global, $data, NULL);
    }

    public function viewEventSchedule(){

        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Add New Department';
        $this->loadViews("viewEventSchedule", $this->global, NULL, NULL);
    }

    public function venueInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        $this->form_validation->set_rules('RoomNo', 'RoomNo', 'required|alpha_numeric');
        $this->form_validation->set_rules('name', 'name', 'required');
        $this->form_validation->set_rules('type', 'type', 'required');
        
        if ($this->form_validation->run() == false) {
            
            $this->viewAddNewVenue();
            
            } else {
                
                $this->load->model('main_model');
            
            $data = array(  
                'bldgNo' => $this->input->post('RoomNo'),
                'name' => $this->input->post('name'),
                'type' => $this->input->post('type')
            );  

            $this->main_model->venueInsert($data);
            redirect('/viewVenue'); 
            }
    }

    public function departmentInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        $this->form_validation->set_rules('acroname', 'acroname', 'required|alpha_numeric');
        $this->form_validation->set_rules('name', 'name', 'required');
        
        if ($this->form_validation->run() == false) {
            
            $this->viewAddNewDepartment();
            
            } else {
                
                $this->load->model('main_model');
            
            $data = array(  
                'acroname' => $this->input->post('acroname'),
                'name' => $this->input->post('name'),
            );  

            $this->main_model->departmentInsert($data);
            $this->viewAddNewDepartment();
            // redirect('/viewDepartment');   
            }
    }

    public function equipmentInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        
        $this->form_validation->set_rules('equipName', 'Name', 'required');
        

        
        if ($this->form_validation->run() == false) {
            
            $this->viewAddNewEquipment();
            
            } else {
                
                $this->load->model('main_model');
            
            $data = array(  
                'equipName' => $this->input->post('equipName'),
                'brand' => $this->input->post('brand'),
                'model' => $this->input->post('model'),
                'serialNo' => $this->input->post('serialNo'),
                'office' => $this->input->post('office'),
                'department' => $this->input->post('department'),
                'type' => $this->input->post('type'),
                'yearAcc' => $this->input->post('yearAcc')
            );  
            $this->main_model->equipmentInsert($data);
            $this->viewAddNewEquipment();
            // redirect('/viewDepartment');   
            }
    }

    public function eventRequestInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        
        $this->form_validation->set_rules('tittleEvent', 'Tittle', 'required');
        

        
        if ($this->form_validation->run() == false) {
            
            $this->viewAddNewEventRequest();
            
            } else {
            $venue = $this->input->post('venue[]');
            $equipment = $this->input->post('equipment[]');
            //echo var_dump($venue);
           
            $tableNo = $this->input->post('tableNo');
            $chairNo = $this->input->post('chairNo');
            $data = array(  
                'noParticipant' => $this->input->post('noParticipant'),
                'dateActual' => $this->input->post('dateActual'),
                'timeActual' => $this->input->post('timeActual'),
                'dateEnd' => $this->input->post('dateEnd'),
                'timeEnd' => $this->input->post('timeEnd'),
                'purpose' => $this->input->post('purpose'),
                'tittleEvent' => $this->input->post('tittleEvent'),
                'status' => 'pending',
                'contactNo' => $this->input->post('contactNo'),
                'departmentID' => $this->input->post('department'),
                'resBy' => $this->session->userdata('userId')
            );  
            $this->main_model->eventRequestInsert($data);
            $lastId = $this->main_model->getLastId();
            $this->main_model->eventVenueInsert($lastId,$venue);
            $this->main_model->eventEquipmentInsert($lastId,$equipment,$tableNo,$chairNo);
            $this->viewAddNewEventRequest();
            // redirect('/viewDepartment');   
            }
    }

    public function jobRequestInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        $this->form_validation->set_rules('itemNo', 'Item Number', 'required|alpha_numeric');
        $this->form_validation->set_rules('location', 'Location', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');
        
        if ($this->form_validation->run() == false) {
            
            $this->viewAddNewVenue();
            
            } else {
                
                $this->load->model('main_model');
            
            $data = array(  
                'itemNo' => $this->input->post('itemNo'),
                'location' => $this->input->post('location'),
                'workDescript' => $this->input->post('description'),
                'resBy' => $this->session->userdata('userId'),
                'remark' => 'pending'
            );  

            $this->main_model->jobRequestInsert($data);
            redirect('main/jobRequestInsert'); 
            }
    }

     public function historyInsert(){

        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        
        // set validation rules
        
        $this->form_validation->set_rules('dateReq', 'dateReq', 'required');
        

        
        if ($this->form_validation->run() == false) {
            
            $this->historyInsert();
            
            } else {

            $data = array(  
                'dateReq' => $this->input->post('dateReq'),
                'description' => $this->input->post('description'),
                'partRep' => $this->input->post('partRep'),
                'dateRep' => $this->input->post('dateRep'),
                'timeRep' => $this->input->post('timeRep'),
                'datefin' => 'datefin',
                'remark' => $this->input->post('remark'),
                'performedBy' => $this->input->post('performedBy'),
            );  
            $this->main_model->historyInsert($data);
            redirect('maintenance/addHistory');   
            }
    }



     

}

?>