<?php

class Vacancy_replies_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('vacancy_replies');
		return $query -> result();
	}
	
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('vacancy_replies', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }

    function change_seen_status()
    {
    	$data = array('is_view'=>1);
    	$this->db->where('id', $this->uri->segment(3));
		$this->db->update('vacancy_replies' , $data);	
    }
	
}

?>