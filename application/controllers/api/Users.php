<?php
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
//To Solve File REST_Controller not found
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Users extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        $this->load->model('users_model');
    
    }

    public function users_get()
    {
       $res = $this->users_model->getUsers();
       $this->response($res,200);
    }

     public function getJob_post()
    {
      $params = array(
            'id' => $this->post('id')
        );
       $res = $this->users_model->getJob($params);
       $this->response($res,200);
    }

    public function getDetails_post()
    {
      $params = array(
            'id' => $this->post('id')
        );
       $res = $this->users_model->getDetails($params);
       $this->response($res,200);
    }

    public function users_post()
    {
        echo"post";
       
    }

    public function users_delete()
    {
        
    }

    public function login_post()
    {

      $password =$this->post('password');
        $params = array(
            'email' => $this->post('username'),
            'password' => md5($password)
        );

       $res = $this->users_model->checkUsers($params);
       $this->response($res,200);
       // if(sizeof($res) > 0){
       //      $this->response($res,200);
       // }else{

       // }
       
    }

    public function updateJob_post()
    { 
        $params = array(
            'id' => $this->post('id'),
            'dateTimeEnd' => $this->post('dateTimeEnd')
        );

       $res = $this->users_model->updateJob($params);

       
      $this->response($res,200);
       
    }

}
