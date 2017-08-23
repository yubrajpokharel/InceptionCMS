<?php

class  Home_model extends CI_Model{
   

	public function get_ip_records()
	{
		$data = $this->db->select('date, COUNT(id) AS total')
						->from('ip_track')
						->group_by('date')
						->get()->result();
		return $data;
	}


	public function get_page_visit_records()
	{
		$data = $this->db->select('page, COUNT(id) AS total')
						->from('page_track')
						->group_by('page')
						->limit(10)
						->order_by('total','desc')
						->get()->result();
		return $data;
	}
    

	
}

?>