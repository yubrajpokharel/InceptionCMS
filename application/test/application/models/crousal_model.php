<?php
class Crousal_model extends CI_Model{
   
	public function get_records()
	{
		$query = $this->db->get('crousal');
		return $query -> result();
	}
	
	function add_record($data)
	{
		$this ->db->insert('crousal' , $data);
	}
	
	function delete_row()
	{
		$this->db->where('crousal_id' , $this->uri->segment(3));
		$this->db->delete('crousal');
	}
	
	function get_individual_records()
    {   
        $query = $this->db->get_where('crousal', array('crousal_id' => $this->uri->segment(3)));
        return $query ->result();
    }	
}
?>