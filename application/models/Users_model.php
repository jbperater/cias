<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : Login_model (Login Model)
 * Login model class to get to authenticate user credentials 
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Users_model extends CI_Model
{
   

	public function getUsers(){
		return $this->db->get('tbl_users')->result();
	}

	public function getJob($params){
		$this->db->where('remark','approve');
		$this->db->where('personAtend',$params['id']);
		return $this->db->get('tbl_job_request')->result();
	}

	public function getDetails($params){
		$this->db->select('BaseTbl.jobId,BaseTbl.itemNo, BaseTbl.workDescript, BaseTb3.name, BaseTb3.bldgNo, BaseTb3.roomNo, BaseTbl.dateTimeStart');
        $this->db->from('tbl_job_request as BaseTbl');
        $this->db->join('tbl_location as BaseTb3','BaseTbl.location = BaseTb3.locID');
		$this->db->where('jobId',$params['id']);
		return $this->db->get()->result();
	}

	public function checkUsers($params){

		$params = array(
            'email' => $params['email'],
            'password' =>$params['password']
        );

		$this->db->where('email',$params['email']);
		$this->db->where('password',$params['password']);
		
		$query = $this->db->get('tbl_users');

		$user = $query->row();

		return $user;
		
        
        /*if(!empty($user)){
             if(verifyHashedPassword('codeinsect', $user->password)){
                 return $user;
             }
         } else {
             
         }	*/
	}

	public function updateJob($params){
		$this->db->set('remark','finished');
		$this->db->set('dateTimeEnd',$params['dateTimeEnd']);
		$this->db->where('jobId',$params['id']);
		$this->db->update('tbl_job_request');
		
		return TRUE;
        
	}


}

?>