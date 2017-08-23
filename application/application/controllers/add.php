<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Add extends CI_Controller {
	
	function index()
	 {
	   if($this->session->userdata('logged_in'))
	   {
		 $session_data = $this->session->userdata('logged_in');
		 $data = array();
			$this->load->view('header.php');
			$this->load->model('add_model');
			if ($query = $this-> add_model -> get_records())
			{
				$data['records'] = $query;
			}
        	
        	$this->load->view('add/list.php', $data);	
			$this->load->view('footer.php');
	   }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	 }
	 
	 function addnew()
	 {
	   if($this->session->userdata('logged_in'))
	   {
		 $session_data = $this->session->userdata('logged_in');
		 $data = array();
			$this->load->view('header.php');
			$this->load->model('add_model');
			if ($query = $this-> add_model -> get_records())
			{
				$data['records'] = $query;
			}
        	
        	$this->load->view('add/content.php', $data);	
			$this->load->view('footer.php');
	   }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	 }
	
	
	
	//public function index(){
//			$data = array();
//			$this->load->view('header.php');
//			$this->load->model('add_model');
//			if ($query = $this-> add_model -> get_records())
//			{
//				$data['records'] = $query;
//			}
//        	
//        	$this->load->view('staffs/content.php', $data);	
//			$this->load->view('footer.php');
//		}
		
		function create()
		{
			if($this->session->userdata('logged_in'))
	   			{
				$session_data = $this->session->userdata('logged_in');
				$config['upload_path'] = './uploads/add/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '0';
				$config['max_width']  = '500';
				$config['max_height']  = '500';
				$config['encrypt_name'] = 'true';
	
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('add_pic'))
					{
						$error = array('error' => $this->upload->display_errors());
						
						$this->load->view('header.php');
						$this->load->view('add/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
						
							'add_name' => $this->input->post('add_name'),
							'add_contact' => $this->input->post('add_contact'),
							'add_link' => $this->input->post('add_url'),
							'add_doc' => $this->upload->file_name,
							'add_rate' => $this->input->post('add_rate'),
							
							'add_added_for' => $this->input->post('add_for'),
							'add_added' => date('Y-m-d H:i:s')
						);
						make_thumb_custom($this->upload->file_name, 'add', 200, 200);
						$this->load->model('add_model');
						$this->add_model->add_record($data);
						redirect('add', 'refresh');
					}
				}
				 else
			   {
				 //If no session, redirect to login page
				 redirect('login', 'refresh');
			   }
				
		}
		
		function update()
		{
			$data = array(
					
						'add_id' => $this->input->post('add_id'),
						'add_name' => $this->input->post('add_name'),
						'add_contact' => $this->input->post('add_contact'),
							'add_link' => $this->input->post('add_url'),
							'add_rate' => $this->input->post('add_rate'),
							
							'add_added_for' => $this->input->post('add_for')
							
						
					);
					
					$data_trace = array(
						'record_desc' => "Add Detail Modified ( ".$this->input->post('add_name')." )",
						'record_date' => date('Y-m-d H:i:s')
					);
					
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			
			$this->load->model('add_model');
			$this->add_model -> update_record($data);
			redirect('add/show/'.$data['add_id'], 'refresh');
		}
		
		function delete()
		{	   
			 $this->load->model('add_model');
			  $this->add_model -> delete_row();
			  redirect('add', 'refresh');     
		}
		
		function show()
		{   
			$this->load->model('add_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->add_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('add/content_show.php', $data);	
			$this->load->view('footer.php');  
		}
	
		function edit()
		{   
			$this->load->model('add_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->add_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('add/content_edit.php', $data);	
			$this->load->view('footer.php');  
		}
		
		function change_pro_pic()
		{
			$config['upload_path'] = './uploads/add/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			
			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pro_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('add/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'add_id' => $this->input->post('add_id'),
						'add_doc' => $this->upload->file_name
						
					);
					make_thumb_custom($this->upload->file_name, 'add', 200, 200);
					$this->load->model('add_model');
					$this->add_model->update_pro_pic($data);
					redirect('add/show/'.$data['add_id'], 'refresh');
				}
						
		}
		
		function logout()
		{	
			//if($this->session->userdata('logged_in')){echo "s session";}else{echo 'No session';}
		   $this->session->unset_userdata('logged_in');
		   //session_destroy();
		   redirect('login', 'refresh');
 		}

}