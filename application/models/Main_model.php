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
    
    function getVenue(){
      	$this->db->select('venID,bldgNo,name,type');
      	$result = $this->db->get('tbl_venue');
      	return $result->result();
  	} 

  	function getDepartment(){
      	$this->db->select('departId,acroname,name');
      	$result = $this->db->get('tbl_department');
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
}

?>