<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crousal extends CI_Controller {
	
	public function index()
	{	
		if($this->session->userdata('logged_in'))
		   {
				$data = array();
				$this->load->view('header.php');
				$this->load->model('crousal_model');
				if ($query = $this-> crousal_model -> get_records())
				{
					$data['records'] = $query;
				}
				$this->load->view('crousal/content.php', $data);	
				$this->load->view('footer.php');
			}else
		   	{
			 //If no session, redirect to login page
			 redirect('login', 'refresh');
		   	}
	}
		
	function create()
	{
		if($this->session->userdata('logged_in'))
	   	{
			$config['upload_path'] = './uploads/trips';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '2048';
				$config['encrypt_name'] = 'true';
				
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('latest_attach'))
					{
						$error = array('error' => $this->upload->display_errors());		
						$this->load->view('header.php');
						$this->load->view('crousal/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
							'crousal_image' => $this->upload->file_name,
							'crousal_date' => date('Y-m-d H:i:s')
						);
						
						$data_trace = array(
							'record_desc' => "Crousal Image added.",
							'record_date' => date('Y-m-d H:i:s')
						);
						
						$this->load->model('crousal_model');
						$this->crousal_model->add_record($data);
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						//echo $data['latest_attach'];
						redirect('crousal', 'refresh');
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
			 $this->load->model('crousal_model');
     	     $this->crousal_model -> delete_row();
        	 redirect('crousal', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
}