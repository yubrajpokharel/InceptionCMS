<?php
Class First_step_model extends CI_Model{
	
	
	
	function issite_setup(){
		$this->db->select('*');
		$this->db->from('site_setting');
		$this->db->limit(1);
		
		$query = $this ->db ->get();
		if($query -> num_rows() == 1){
			return true;
			}
			else{
				return false;
				}
		
	}

	function save_site_name($data){
		$this ->db->insert('site_setting' , $data);
		return mysql_insert_id();
	}

	function save_user($data){
		$this ->db->insert('admin' , $data);
		return mysql_insert_id();
	}
	
	}

?>