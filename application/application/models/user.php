<?php
Class User extends CI_Model{
	
	public function index(){
			$this->load->view('welcome_header.php');
			$this->load->view('default.php');
			$this->load->view('footer.php');
		}
	
	
	function login($username, $password){
		$this->db->select('admin_id, admin_user_id, admin_password');
		$this->db->from('admin');
		$this->db->where('admin_user_id', $username);
		$this->db->where('admin_password', $password);
		$this->db->limit(1);
		
		$query = $this ->db ->get();
		if($query -> num_rows() == 1){
			return $query -> result();
			}
			else{
				return false;
				}
		
		}
	
	}

?>