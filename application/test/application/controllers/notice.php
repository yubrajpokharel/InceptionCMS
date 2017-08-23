<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Notice extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('notice_model');
			if ($query = $this-> notice_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('notice/content.php', $data);	
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
			$config['upload_path'] = './uploads/attachments';
				//$config['allowed_types'] = 'pdf|doc|docx|xls|xlsx';
				$config['allowed_types'] = 'jpg|gif|png';
				$config['max_size']	= '2048';
				$config['encrypt_name'] = 'true';
				
	
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('latest_attach'))
					{
						$error = array('error' => $this->upload->display_errors());
						
						$this->load->view('header.php');
						$this->load->view('notice/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
							'notice_name' => $this->input->post('latest_name'),
							'notice_detail' => $this->input->post('latest_news'),
							'latest_attach' => $this->upload->file_name,
							'notice_date' => $this->input->post('latest_date'),
							'date_created' => date('Y-m-d H:i:s'),							
						);
						
						$data_trace = array(
							'record_desc' => "Notice added ( ".$this->input->post('latest_name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('notice_model');
						$this->notice_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						echo $data['latest_attach'];
						//redirect('notice', 'refresh');
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
			 $this->load->model('notice_model');
          $this->notice_model -> delete_row();
          redirect('notice', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	function change_notice_attach()
		{
			$config['upload_path'] = './uploads/attachments/';
			//$config['allowed_types'] = 'pdf|doc|docx|xls|xlsx';
			$config['allowed_types'] = 'jpg|gif|png';
			$config['max_size']	= '2048';
			$config['encrypt_name'] = 'true';

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pro_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('notice/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'notice_id' => $this->input->post('latest_id'),
						'latest_attach' => $this->upload->file_name
						
					);
					
					$this->load->model('notice_model');
					$this->notice_model->update_not_attach($data);
					redirect('notice/show/'.$data['notice_id'], 'refresh');
				}
						
		}
	
	
	function show()
    {   
		if($this->session->userdata('logged_in'))
	    {
			$this->load->model('notice_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->notice_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('notice/content_show.php', $data);	
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
			$this->load->model('notice_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->notice_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('notice/content_edit.php', $data);	
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
			'notice_id' => $this->input->post('latest_id'),
			'notice_name' => $this->input->post('latest_name'),
			'notice_detail' => $this->input->post('latest_news'),
			'notice_date' => $this->input->post('latest_date'),
			'date_created' => date('Y-m-d H:i:s'),
		);
		
		$data_trace = array(
			'record_desc' => "Notice News Modified ( ".$this->input->post('Latest_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('notice_model');
		$this->notice_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('notice/show/'.$data['notice_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}