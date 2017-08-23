<?php

class  Pageadd_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('onpageadd');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('onpageadd' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('add_id', $data['add_id']);
		$this->db->update('onpageadd' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('add_id' , $this->uri->segment(3));
		$this->db->delete('onpageadd');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('onpageadd', array('add_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('add_id', $data['add_id']);
		$this->db->update('onpageadd' , $data);
	}
	
}

?>