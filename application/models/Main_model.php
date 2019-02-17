<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : Login_model (Login Model)
 * Login model class to get to authenticate user credentials 
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Main_model extends CI_Model
{


	function approveEventRequests($id){
		
      	$this->db->set('status','approve');
      	$this->db->where('formNo',$id);
      	$this->db->update('tbl_reserve_request');
  	}

	function approveJobRequests($id,$personel,$date_actual){

      	$this->db->set('remark','approve');
        $this->db->set('dateTimeStart',$date_actual);
      	$this->db->set('personAtend',$personel);
      	$this->db->where('jobId',$id);
      	$this->db->update('tbl_job_request');
  	}

    function assignNotify($id){
    
        $this->db->set('ownerNotify',1);
        $this->db->where('id',$id);
        $this->db->where('type','job_request');
        $this->db->update('tbl_notification');
    }

    function eventNotify($id){
    
        $this->db->set('ownerNotify',1);
        $this->db->where('id',$id);
        $this->db->where('type','event');
        $this->db->update('tbl_notification');
    }

    function jobRequestNotify($id,$personel){
    
        $this->db->set('ownerNotify',1);
        $this->db->set('assign',$personel);
        $this->db->where('id',$id);
        $this->db->where('type','maintenance');
        $this->db->update('tbl_notification');
    }
    
    function getVenue(){
      	$this->db->select('venID,bldgNo,name,type');
      	$result = $this->db->get('tbl_venue');
      	return $result->result();
  	}

  	function getEventEquipment(){
      	$this->db->select('equipId,name,type');
      	$result = $this->db->get('tbl_event_equip');
      	return $result->result();
  	}

    function getJobRequestData($id){
        $this->db->select('jobId,itemNo,workDescript,location,dateTimeStart,dateTimeEnd,remark');
        $this->db->where('jobId',$id);
        $result = $this->db->get('tbl_job_request');
        return $result->result();
    }  

  	function getDepartment(){
      	$this->db->select('departId,acroname,name');
      	$result = $this->db->get('tbl_department');
     	return $result->result();
  	}

  	function getLastId(){
      	$last=$this->db->insert_id('tbl_reserve_request',array('form_no' => 'value'));
		return $last;
  	}

  	function getMaintenanceStaff(){
      	$this->db->select('userId,name,roleId');
      	$this->db->where('roleId',3);
      	$result = $this->db->get('tbl_users');
     	return $result->result();
  	}

  	function venueInsert($data) {
		$this->db->insert('tbl_venue',$data);		
	}

	function departmentInsert($data) {
		$this->db->insert('tbl_department',$data);		
	}

	function equipmentInsert($data) {
		$this->db->insert('tbl_equipment',$data);		
	}

	function jobRequestInsert($data) {
		$this->db->insert('tbl_job_request',$data);		
	}

	function eventRequestInsert($data) {
		$this->db->insert('tbl_reserve_request',$data);		
	}

	function eventVenueInsert($lastId,$data){
		foreach ($data as $data) {
			$query="insert into ass_reserve_venue values('$lastId','$data')";
			$this->db->query($query);
		}	
	}

	function eventEquipmentInsert($lastId,$data,$table,$chair) {
		foreach ($data as $data) {
			$query="insert into ass_reserve_equip_need values('$lastId','$data',$table,$chair)";
			$this->db->query($query);
		}	
	}

	function getEquipment(){
      	$this->db->select('equipName,brand,model,serialNo,office,department,type,yearAcc');
      	$result = $this->db->get('tbl_equipment');
     	return $result->result();
  	}

  	function getNotification($roleId){
      	$this->db->select('tbl_notification.id,tbl_notification.nofiName,tbl_notification.type,tbl_notification.ownerNotify,tbl_notification.adminNotify,tbl_notification.resBy,tbl_users.name');
      	$this->db->from('tbl_notification');
      	$this->db->join('tbl_users','tbl_notification.resBy=tbl_users.userId');
      	if($roleId == 1){
      		$this->db->where('adminNotify',1);
      		$this->db->where('resBy !=',$this->session->userdata('userId'));
      	}
      	elseif($roleId == 2){
      		$this->db->where('ownerNotify',1);
      		$this->db->where('resBy',$this->session->userdata('userId'));
          
      	}
      	elseif($roleId == 3){
      		$this->db->where('ownerNotify',1);
      		$this->db->where('assign',$this->session->userdata('userId'));
          
      	}
      	else{
      		$this->db->where('ownerNotify',1);
      		$this->db->where('resBy',$this->session->userdata('userId'));
         
      	}
      	$result = $this->db->get();
     	return $result->result();
  	}

  	function historyInsert($data) {
		$this->db->insert('tbl_equipment_history',$data);		
	}

   function get_data(){
      $this->db->select('year,purchase,sale,profit');
      $result = $this->db->get('account');
      return $result;
  }

  function jobRequestUpdate($id,$date,$remark) {
     $this->db->set('dateTimeEnd',$date);
     $this->db->set('remark',$remark);
     $this->db->where('jobId',$id);
     $this->db->update('tbl_job_request');
       
  }
	
}

?>