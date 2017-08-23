<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Marquee extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('marquee_model');
			if ($query = $this-> marquee_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('marquee/content.php', $data);	
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
				'contact_name' => $this->input->post('marquee_name'),
				'contact_number' => $this->input->post('contact_number'),
				'marquee_text' => $this->input->post('marquee_desc'),
				'marquee_added' => date('Y-m-d H:i:s'),							
			);
			
			$data_trace = array(
				'record_desc' => "Marquee added for ( ".$this->input->post('contact_name')." )",
				'record_date' => date('Y-m-d H:i:s')
				
			);
			
			$this->load->model('marquee_model');
			$this->marquee_model->add_record($data);
			
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			redirect('marquee', 'refresh');
					
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
			 $this->load->model('marquee_model');
          $this->marquee_model -> delete_row();
          redirect('marquee', 'refresh');     
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
			$this->load->model('marquee_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->marquee_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('marquee/content_show.php', $data);	
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
			$this->load->model('marquee_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->marquee_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('marquee/content_edit.php', $data);	
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
			'marquee_id' => $this->input->post('marquee_id'),
			'contact_name' => $this->input->post('marquee_name'),
			'contact_number' => $this->input->post('contact_number'),
			'marquee_text' => $this->input->post('marquee_desc'),
			'marquee_status' => $this->input->post('service_status')
		);
		
		$data_trace = array(
			'record_desc' => "Marquee Modified ( ".$this->input->post('contact_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('marquee_model');
		$this->marquee_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('marquee/show/'.$data['marquee_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}