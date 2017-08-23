<?php

class  Openinghours2_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('opening_hours2');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('opening_hours2' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('opening_hours2' , $data);

	}
	
	
	function delete_row()
	{
		
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('opening_hours2');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('opening_hours2', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
}

?>