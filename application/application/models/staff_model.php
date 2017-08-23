<?php

class  Staff_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('staff_details');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('staff_details' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('staff_id', $data['staff_id']);
		$this->db->update('staff_details' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('staff_id' , $this->uri->segment(3));
		$this->db->delete('staff_details');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('staff_details', array('staff_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('staff_id', $data['staff_id']);
		$this->db->update('staff_details' , $data);
	}
	
}

?>