<?php

class  Tracker_model extends CI_Model{
   

	public function get_records()
	{
		$this->db->order_by("record_date", "desc");
		$this->db->where("status",1);
		$query = $this->db->get('records');
		
		return $query -> result();
	}

	function add_record($data_trace)
	{
		$this ->db->insert('records' , $data_trace);
	}
	
}

?>