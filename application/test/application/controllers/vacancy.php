<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Vacancy extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('vacency_model');
			if ($query = $this-> vacency_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('vacency/content.php', $data);	
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
							'title' => $this->input->post('title'),
							'desc' => $this->input->post('desc'),
							'job' => $this->input->post('job'),
							'salary' => $this->input->post('salary'),
							'nop' => $this->input->post('nop'),
							'end_date' => $this->input->post('valid_date'),
							'date_created' => date('Y-m-d H:i:s')					
						);
						
						$data_trace = array(
							'record_desc' => "News added ( ".$this->input->post('title')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('vacency_model');
						$this->vacency_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('vacancy', 'refresh');
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
			 $this->load->model('vacency_model');
          $this->vacency_model -> delete_row();
          redirect('vacancy', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	
	
	function show()
    {   
    	//die("i am here");
		if($this->session->userdata('logged_in'))
	    {
			$this->load->model('vacency_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->vacency_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('vacency/content_show.php', $data);	
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
			$this->load->model('vacency_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->vacency_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('vacency/content_edit.php', $data);	
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
			'title' => $this->input->post('title'),
			'desc' => $this->input->post('desc'),
			'job' => $this->input->post('job'),
			'nop' => $this->input->post('nop'),
			'salary' => $this->input->post('salary'),
			'end_date' => $this->input->post('valid_date'),
			'date_created' => date('Y-m-d H:i:s'),
			'status' =>  $this->input->post('status')
		);
		
		$data_trace = array(
			'record_desc' => "vacancy News Modified ( ".$this->input->post('vacency_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('vacency_model');
		$this->vacency_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('vacancy/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}