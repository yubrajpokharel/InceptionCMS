<?php

class  Portfolio_model extends CI_Model{
   

	public function get_records()
	{
		$query = $this->db->get('portfolio');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('portfolio' , $data);
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('portfolio' , $data);
	}
	
	
	function delete_row()
	{
		$this->db->where('id' , $this->uri->segment(3));
		$this->db->delete('portfolio');
	}
	
	function get_individual_records()
    {
        
        $query = $this->db->get_where('portfolio', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_not_attach($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('portfolio' , $data);
	}
	
}

?>