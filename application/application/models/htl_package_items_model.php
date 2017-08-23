<?php

class  htl_package_items_model extends CI_Model{
   

	public function get_records($id)
	{
		$query = $this->db->where('pack_id', $id)->get('htl_pack_items');
		return $query -> result();
	}


	public function get_list()
	{
		$query = $this->db->get('htl_pack_items');
		return $query -> result();
	}
    
	
	function add_record($data)
	{
		$this ->db->insert('htl_pack_items' , $data);
		$insert_id = mysql_insert_id();
		return $insert_id;
	}
	
	
	function update_record($data)
	{	
		$this->db->where('id', $data['id']);
		$this->db->update('htl_pack_items' , $data);
	}
	
	
	function delete_row($id)
	{
		
		$this->db->where('id' , $id);
		$this->db->delete('htl_pack_items');
	}
	
	function get_individual_records()
    { 
        $query = $this->db->get_where('htl_pack_items', array('id' => $this->uri->segment(3)));
        return $query ->result();
    }
	
	function update_pro_pic($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('htl_pack_items' , $data);
	}
	
	function check_selected(){
		
		$data = $this->db->select('*')
				->from('htl_pack_items')
				->where('selection', 1)
				->get()->result();

		return $data;
	}

	function make_selected($id, $action){
		$data = array('selection' => $action);

		$this->db->where('id', $id);
		$this->db->update('htl_pack_items' , $data);
	}

	function check_best(){
		
		$data = $this->db->select('*')
				->from('htl_pack_items')
				->where('must_try', 1)
				->get()->result();

		return $data;
	}

	function make_best($id, $action){
		$data = array('must_try' => $action);

		$this->db->where('id', $id);
		$this->db->update('htl_pack_items' , $data);
	}

	function get_categories(){
		$data = $this->db->select('*')
				->from('htl_packages')
				->where('status', 1)
				->get()->result();

		return $data;	
	}
}

?>