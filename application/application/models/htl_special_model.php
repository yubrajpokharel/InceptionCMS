<?php

class Htl_special_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('htl_special');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('htl_special' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('htl_special' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('htl_special');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('htl_special', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('htl_special' , $data);
	}
	
}

?>