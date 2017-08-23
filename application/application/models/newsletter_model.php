<?php

class Newsletter_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('newsletter');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('seo' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('seo_id', $data['seo_id']);
		$this->db->update('seo' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('newsletter');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('seo', array('seo_id' => $this->uri->segment(3)));
        return $query ->result();
    }

	
}

?>