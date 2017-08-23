<?php

class About_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('about_us');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('about_us' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('about_id', $data['about_id']);
		$this->db->update('about_us' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('about_id' , $this->uri->segment(3));
		$this->db->delete('about_us');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('about_us', array('about_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('about_id', $data['about_id']);
		$this->db->update('about_us' , $data);
	}

	
	
}

?>