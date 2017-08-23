<?php

class Marquee_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('marquee_text');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('marquee_text' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('marquee_id', $data['marquee_id']);
		$this->db->update('marquee_text' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('marquee_id' , $this->uri->segment(3));
		$this->db->delete('marquee_text');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('marquee_text', array('marquee_id' => $this->uri->segment(3)));
        return $query ->result();
    }

}

?>