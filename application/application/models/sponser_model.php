<?php

class  Sponser_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('sponsers');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('sponsers' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('sponser_id', $data['sponser_id']);
		$this->db->update('sponsers' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('sponser_id' , $this->uri->segment(3));
		$this->db->delete('sponsers');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('sponsers', array('sponser_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('sponser_id', $data['sponser_id']);
		$this->db->update('sponsers' , $data);
	}
	
}

?>