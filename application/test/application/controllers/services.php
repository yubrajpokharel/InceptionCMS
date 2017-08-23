<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Services extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('services_model');
			if ($query = $this-> services_model -> get_records())
			{
				$data['records'] = $query;
			}
        	$data['total'] = count($query);
        	$this->load->view('services/content.php', $data);	
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
			
			$data = array(
				'service_name' => $this->input->post('service_name'),
				'service_desc' => $this->input->post('service_desc'),
				'service_added' => date('Y-m-d H:i:s'),							
			);
			
			$data_trace = array(
				'record_desc' => "Services added ( ".$this->input->post('service_name')." )",
				'record_date' => date('Y-m-d H:i:s')
				
			);
			
			$this->load->model('services_model');
			$this->services_model->add_record($data);
			
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			redirect('services', 'refresh');
					
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
			 $this->load->model('services_model');
          $this->services_model -> delete_row();
          redirect('services', 'refresh');     
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
			$this->load->model('services_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->services_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('services/content_show.php', $data);	
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
			$this->load->model('services_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->services_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('services/content_edit.php', $data);	
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
			'service_id' => $this->input->post('service_id'),
			'service_name' => $this->input->post('service_name'),
			'service_desc' => $this->input->post('service_desc'),
			'service_status' => $this->input->post('service_status')
		);
		
		$data_trace = array(
			'record_desc' => "Services Modified ( ".$this->input->post('service_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('services_model');
		$this->services_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('services/show/'.$data['service_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}