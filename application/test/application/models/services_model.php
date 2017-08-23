<?php

class Services_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('services');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('services' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('service_id', $data['service_id']);
		$this->db->update('services' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('service_id' , $this->uri->segment(3));
		$this->db->delete('services');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('services', array('service_id' => $this->uri->segment(3)));
        return $query ->result();
    }

}

?>