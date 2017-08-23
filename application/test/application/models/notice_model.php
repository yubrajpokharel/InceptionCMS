<?php

class  Notice_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('notice');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('notice' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('notice_id', $data['notice_id']);
		$this->db->update('notice' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('notice_id' , $this->uri->segment(3));
		$this->db->delete('notice');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('notice', array('notice_id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_not_attach($data)
	{
		$this->db->where('notice_id', $data['notice_id']);
		$this->db->update('notice' , $data);
	}
	
}

?>