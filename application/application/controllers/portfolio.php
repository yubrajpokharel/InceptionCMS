<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Portfolio extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('portfolio_model');
			if ($query = $this-> portfolio_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('portfolio/content.php', $data);	
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
			$config['upload_path'] = './uploads/portfolio';
				//$config['allowed_types'] = 'pdf|doc|docx|xls|xlsx';
				$config['allowed_types'] = 'jpg|gif|png';
				$config['max_size']	= '2048';
				$config['encrypt_name'] = 'true';
				
	
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('pic'))
					{
						$error = array('error' => $this->upload->display_errors());
						
						$this->load->view('header.php');
						$this->load->view('portfolio/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
							'name' => $this->input->post('name'),
							'desc' => $this->input->post('desc'),
							'image' => $this->upload->file_name,
							'date_created' => date('Y-m-d H:i:s'),							
						);
						
						make_thumb($this->upload->file_name, 'portfolio');
						
						$data_trace = array(
							'record_desc' => "portfolio added ( ".$this->input->post('name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('portfolio_model');
						$this->portfolio_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						//echo $data['image'];
						redirect('portfolio', 'refresh');
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
			 $this->load->model('portfolio_model');
          $this->portfolio_model -> delete_row();
          redirect('portfolio', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	function change_portfolio_attach()
		{
			$config['upload_path'] = './uploads/portfolio/';
			//$config['allowed_types'] = 'pdf|doc|docx|xls|xlsx';
			$config['allowed_types'] = 'jpg|gif|png';
			$config['max_size']	= '2048';
			$config['encrypt_name'] = 'true';

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('portfolio/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('latest_id'),
						'image' => $this->upload->file_name	
					);

					make_thumb($this->upload->file_name, 'portfolio');
					
					$this->load->model('portfolio_model');
					$this->portfolio_model->update_not_attach($data);
					redirect('portfolio/show/'.$data['id'], 'refresh');
				}
						
		}
	
	
	function show()
    {   
		if($this->session->userdata('logged_in'))
	    {
			$this->load->model('portfolio_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->portfolio_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('portfolio/content_show.php', $data);	
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
			$this->load->model('portfolio_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->portfolio_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('portfolio/content_edit.php', $data);	
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
			'id' => $this->input->post('id'),
			'name' => $this->input->post('name'),
			'desc' => $this->input->post('desc'),
			'status' => $this->input->post('status'),
		);
		
		$data_trace = array(
			'record_desc' => "portfolio News Modified ( ".$this->input->post('name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('portfolio_model');
		$this->portfolio_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('portfolio/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
}