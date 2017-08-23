<?php

class  Invoice_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('purchases');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('purchases' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('product_id', $data['product_id']);
		$this->db->update('purchases' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('purchases');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('purchases', array('product_id' => $this->uri->segment(3)));
        return $query ->result();
    }

    function get_individual_all_records()
    { 
        $query = $this->db->get_where('purchases', array('product_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('purchases' , $data);
	}
	
}

?>