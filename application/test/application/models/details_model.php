<?php

class  Details_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('intial_setup');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('intial_setup' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('setup_id', $data['setup_id']);
		$this->db->update('intial_setup' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('setup_id' , $this->uri->segment(3));
		$this->db->delete('intial_setup');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('intial_setup', array('setup_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
}

?>