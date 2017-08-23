<?php

class Vacency_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('vacency');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('vacency' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('vacency' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('vacency');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('vacency', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('vacency' , $data);
	}
	
}

?>