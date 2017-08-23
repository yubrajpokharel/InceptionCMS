<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Latest extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('latest_model');
			if ($query = $this-> latest_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('latest/content.php', $data);	
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
			$config['upload_path'] = './uploads/latest_news';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '3072';
				$config['max_width']  = '3500';
				$config['max_height']  = '3500';
				$config['encrypt_name'] = 'true';
	
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('latest_pic'))
					{
						$error = array('error' => $this->upload->display_errors());
						
						$this->load->view('header.php');
						$this->load->view('latest/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
						'category' => $this->input->post('pack_type'),
							'latest_name' => $this->input->post('latest_name'),
							'latest_news' => $this->input->post('latest_news'),
							'np_latest_name' => $this->input->post('np_latest_name'),
							'np_latest_news' => $this->input->post('np_latest_news'),
							'latest_picture' => $this->upload->file_name,
							'latest_date' => $this->input->post('latest_date'),
							'date_created' => date('Y-m-d H:i:s'),							
						);
						
						$data_trace = array(
							'record_desc' => "News added ( ".$this->input->post('latest_name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('latest_model');
						$this->latest_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('latest', 'refresh');
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
			 $this->load->model('latest_model');
          $this->latest_model -> delete_row();
          redirect('latest', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	function change_latest_pic()
		{
			$config['upload_path'] = './uploads/latest_news/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '3072';
			$config['max_width']  = '3500';
			$config['max_height']  = '3500';
			$config['encrypt_name'] = 'true';

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pro_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('latest/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'latest_id' => $this->input->post('latest_id'),
						'latest_picture' => $this->upload->file_name
						
					);
					
					$this->load->model('latest_model');
					$this->latest_model->update_pro_pic($data);
					redirect('latest/show/'.$data['latest_id'], 'refresh');
				}
						
		}
	
	
	function show()
    {   
		if($this->session->userdata('logged_in'))
	    {
			$this->load->model('latest_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->latest_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('latest/content_show.php', $data);	
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
			$this->load->model('latest_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->latest_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('latest/content_edit.php', $data);	
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
			'latest_id' => $this->input->post('latest_id'),
			'category' => $this->input->post('pack_type'),
			'latest_name' => $this->input->post('latest_name'),
			'latest_news' => $this->input->post('latest_news'),
			'np_latest_name' => $this->input->post('np_latest_name'),
			'np_latest_news' => $this->input->post('np_latest_news'),
			'latest_date' => $this->input->post('latest_date'),
			'latest_status' => $this->input->post('latest_status')
		);
		
		$data_trace = array(
			'record_desc' => "Latest News Modified ( ".$this->input->post('Latest_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('latest_model');
		$this->latest_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('latest/show/'.$data['latest_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}