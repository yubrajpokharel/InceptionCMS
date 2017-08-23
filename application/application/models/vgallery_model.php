<?php

class  Vgallery_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('video_gallery');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('video_gallery' , $data);
	}
	
	
	function add_images($data)
	{
		$this ->db->insert('gall_videos' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('gall_id', $data['gall_id']);
		$this->db->update('video_gallery' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('gall_id' , $this->uri->segment(3));
		$this->db->delete('video_gallery');
	}
	
	function delete_ind_row()
	{
		$this->db->where('gall_vid_id' , $this->uri->segment(3));
		$this->db->delete('gall_videos');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('video_gallery', array('gall_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function get_individual_gall_records()
    {
        
        $query = $this->db->get_where('gall_videos', array('gall_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
}

?>