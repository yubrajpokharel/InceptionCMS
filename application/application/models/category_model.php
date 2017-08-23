<?php

class Category_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('categories');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('categories' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('cat_id', $data['cat_id']);
		$this->db->update('categories' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('cat_id' , $this->uri->segment(3));
		$this->db->delete('categories');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('categories', array('cat_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('cat_id', $data['cat_id']);
		$this->db->update('categories' , $data);
	}
	
}

?>