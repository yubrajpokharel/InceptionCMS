<?php

class Booking_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('booking');
		return $query -> result();
	}
	
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('booking', array('book_id' => $this->uri->segment(3)));
        return $query ->result();
    }

    function change_seen_status()
    {
    	$data = array('is_view'=>1);
    	$this->db->where('feedback_id', $this->uri->segment(3));
		$this->db->update('feedback' , $data);	
    }
	
}

?>