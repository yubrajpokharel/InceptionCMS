<?php

class  News_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('news');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('news' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('news_id', $data['news_id']);
		$this->db->update('news' , $data);
	}
	
	
	function delete_row()
	{
		
		$this->db->where('news_id' , $this->uri->segment(3));
		$this->db->delete('news');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('news', array('news_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('news_id', $data['news_id']);
		$this->db->update('news' , $data);
	}
	
}

?>