<?php

class  Gallery_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('gallery');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('gallery' , $data);
	}
	
	
	function add_images($data)
	{
		$this ->db->insert('gall_images' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('gall_id', $data['gall_id']);
		$this->db->update('gallery' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('gall_id' , $this->uri->segment(3));
		$this->db->delete('gallery');
	}
	
	function delete_ind_row()
	{
		$this->db->where('gall_img_id' , $this->uri->segment(3));
		$this->db->delete('gall_images');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('gallery', array('gall_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function get_individual_gall_records()
    {
        
        $query = $this->db->get_where('gall_images', array('gall_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
}

?>