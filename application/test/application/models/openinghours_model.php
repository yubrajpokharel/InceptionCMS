<?php

class  Openinghours_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('opening_hours');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('opening_hours' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('opening_hours' , $data);

	}
	
	
	function delete_row()
	{
		
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('opening_hours');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('opening_hours', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
}

?>