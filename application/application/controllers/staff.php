<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Staff extends CI_Controller {
	
	function index()
	 {
	   if($this->session->userdata('logged_in'))
	   {
		 $session_data = $this->session->userdata('logged_in');
		 $data = array();
			$this->load->view('header.php');
			$this->load->model('staff_model');
			if ($query = $this-> staff_model -> get_records())
			{
				$data['records'] = $query;
			}
        	
        	$this->load->view('staffs/content.php', $data);	
			$this->load->view('footer.php');
	   }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	 }
	

		function create()
		{
			if($this->session->userdata('logged_in'))
	   			{
				$session_data = $this->session->userdata('logged_in');
				$config['upload_path'] = './uploads/staffs/';
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
						$this->load->view('staffs/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
						
							'staff_f_name' => ucfirst($this->input->post('first_name')),
							'staff_l_name' => ucfirst($this->input->post('last_name')),
							'staff_dob' => $this->input->post('dob'),
							'staff_sex' => $this->input->post('sex'),
							'staff_t_address' => ucfirst($this->input->post('temp_address')),
							'staff_p_address' => ucfirst($this->input->post('per_address')),
							'staff_email' => $this->input->post('email_address'),
							'staff_contact' => $this->input->post('contact_number'),
							'staff_major_feild' => ucfirst($this->input->post('maj_feild')),
							'staff_desc' => ucfirst($this->input->post('desc')),
							'facebook' =>$this->input->post('fb'),
							'googleplus' =>$this->input->post('googleplus'),
							'twitter' =>$this->input->post('twitter'),
							'linkedin' =>$this->input->post('linkedin'),
							'staff_pic' => $this->upload->file_name,
							'staff_added' => date('Y-m-d H:i:s')
						);
						
						make_thumb($this->upload->file_name, 'staffs');

						$this->load->model('staff_model');
						$this->staff_model->add_record($data);
						redirect('staff', 'refresh');
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
					
						'staff_id' => $this->input->post('staff_id'),
						'staff_f_name' => ucfirst($this->input->post('first_name')),
						'staff_l_name' => ucfirst($this->input->post('last_name')),
						'staff_dob' => $this->input->post('dob'),
						'staff_sex' => $this->input->post('sex'),
						'staff_t_address' => ucfirst($this->input->post('temp_address')),
						'staff_p_address' => ucfirst($this->input->post('per_address')),
						'staff_email' => $this->input->post('email_address'),
						'staff_contact' => $this->input->post('contact_number'),
						'staff_major_feild' => ucfirst($this->input->post('maj_feild')),
						'facebook' =>$this->input->post('fb'),
						'googleplus' =>$this->input->post('googleplus'),
						'twitter' =>$this->input->post('twitter'),
						'linkedin' =>$this->input->post('linkedin'),
						'staff_desc' => ucfirst($this->input->post('desc')),
					);
					
					$data_trace = array(
						'record_desc' => "Staff Detail Modified ( ".$this->input->post('first_name')." )",
						'record_date' => date('Y-m-d H:i:s')
					);
					
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			
			$this->load->model('staff_model');
			$this->staff_model -> update_record($data);
			redirect('staff/'.$data['staff_id'], 'refresh');
		}
		
		function delete()
		{	   
			 $this->load->model('staff_model');
			  $this->staff_model -> delete_row();
			  redirect('staff', 'refresh');     
		}
		
		function show()
		{   
			$this->load->model('staff_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->staff_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('staffs/content_show.php', $data);	
			$this->load->view('footer.php');  
		}
	
		function edit()
		{   
			$this->load->model('staff_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->staff_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('staffs/content_edit.php', $data);	
			$this->load->view('footer.php');  
		}
		
		function change_pro_pic()
		{
			$config['upload_path'] = './uploads/staffs/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			
			$config2['image_library'] = 'gd2';
			$config2['source_image']	= './uploads/thumbs/';
			$config2['create_thumb'] = TRUE;
			$config2['maintain_ratio'] = TRUE;
			$config2['width']	 = 175;
			$config2['height']	= 130;
			
			$this->load->library('image_lib', $config2); 
			$this->image_lib->resize();
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pro_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('staffs/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'staff_id' => $this->input->post('staff_id'),
						'staff_pic' => $this->upload->file_name	
					);

					make_thumb($this->upload->file_name, 'staffs');
					
					
					$this->load->model('staff_model');
					$this->staff_model->update_pro_pic($data);
					redirect('staff/show/'.$data['staff_id'], 'refresh');
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