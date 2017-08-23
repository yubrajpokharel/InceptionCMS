<?php

class  Topadd_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('topadd');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('topadd' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('add_id', $data['add_id']);
		$this->db->update('topadd' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('add_id' , $this->uri->segment(3));
		$this->db->delete('topadd');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('topadd', array('add_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('add_id', $data['add_id']);
		$this->db->update('topadd' , $data);
	}
	
}

?>