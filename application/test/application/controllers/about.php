<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('about_model');
			if ($query = $this-> about_model -> get_records())
			{
				$data['records'] = $query;
			}
        	$data['total'] = count($query);
        	$this->load->view('about/content.php', $data);	
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

			if($this->config->item('about_us_image')) { //if about us image is on 

				$config['upload_path'] = './uploads/aboutus';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '2048';
				$config['encrypt_name'] = 'true';
				
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('about_pic'))
					{
						$error = array('error' => $this->upload->display_errors());		
						$this->load->view('header.php');
						$this->load->view('about/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
				
						$data = array(
							'about_name' => $this->input->post('about_name'),
							'about_desc' => $this->input->post('about_desc'),
							'about_image' => $this->upload->file_name,
							'about_added' => date('Y-m-d H:i:s')
						);
						
						$data_trace = array(
							'record_desc' => "About Us Section added ( ".$this->input->post('about_name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('about_model');
						$this->about_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('about', 'refresh');
					}
			}else{ // if about us image is off

				$data = array(
							'about_name' => $this->input->post('about_name'),
							'about_desc' => $this->input->post('about_desc'),
							'about_image' => '',
							'about_added' => date('Y-m-d H:i:s')
						);
						
						$data_trace = array(
							'record_desc' => "About Us Section added ( ".$this->input->post('about_name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('about_model');
						$this->about_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('about', 'refresh');

			}	
			
		}
		 else
		{
			 //If no session, redirect to login page
			 redirect('login', 'refresh');
		   }
				
		} 
		
	function delete()
    {	  
		if($this->session->userdata('logged_in'))
	   	{ 
			 $this->load->model('about_model');
          $this->about_model -> delete_row();
          redirect('about', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	
	function show()
    {   
		if($this->session->userdata('logged_in'))
	    {
			$this->load->model('about_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->about_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('about/content_show.php', $data);	
		$this->load->view('footer.php');  
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	function edit()
    {   
		if($this->session->userdata('logged_in'))
	   	{
			$this->load->model('about_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->about_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('about/content_edit.php', $data);	
		$this->load->view('footer.php');  
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	function update()
	{		
		if($this->session->userdata('logged_in'))
	    {
			$data = array(
			'about_id' => $this->input->post('about_id'),
			'about_name' => $this->input->post('about_name'),
			'about_desc' => $this->input->post('about_desc'),
			'about_status' => $this->input->post('about_status')
		);
		
		$data_trace = array(
			'record_desc' => "About Modified ( ".$this->input->post('about_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('about_model');
		$this->about_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('about/show/'.$data['about_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	function change_pro_pic()
		{
			$config['upload_path'] = './uploads/aboutus/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('about_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('about/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'about_id' => $this->input->post('about_id'),
						'about_image' => $this->upload->file_name
						
					);
					
					$this->load->model('about_model');
					$this->about_model->update_pro_pic($data);
					redirect('about/show/'.$data['about_id'], 'refresh');
				}
						
		}

}