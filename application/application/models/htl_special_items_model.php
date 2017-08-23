<?php

class  htl_special_items_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('htl_special_items');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('htl_special_items' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('htl_special_items' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('htl_special_items');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('htl_special_items', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('htl_special_items' , $data);
	}
	
}

?>