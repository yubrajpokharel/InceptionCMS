<?php

class Testimonial_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('testimonial');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('testimonial' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('testimonial' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('testimonial');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('testimonial', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }

    function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('testimonial' , $data);
	}

}

?>