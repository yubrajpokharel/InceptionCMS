<?php

class Product_category_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('product_category');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('product_category' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('cat_id', $data['cat_id']);
		$this->db->update('product_category' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('cat_id' , $this->uri->segment(3));
		$this->db->delete('product_category');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('product_category', array('cat_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('cat_id', $data['cat_id']);
		$this->db->update('product_category' , $data);
	}
	
}

?>