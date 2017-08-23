<?php

class  Product_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('products');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('products' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('products' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('products');
	}
	
	function get_individual_records()
    { 
        //$query = $this->db->get_where('products', array('id' => $this->uri->segment(3)));
        $data = $this->db->select('p.*, pc.cat_name as cat')
				->from('products as p')
				->join('product_category as pc', "p.category_id = pc.cat_id")
				->where('id', $this->uri->segment(3))
				->get()->result();
		
		
        return $data;
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('products' , $data);
	}
	
}

?>