<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Latestcategory extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('latestcategory_model');
			if ($query = $this-> latestcategory_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('latest_category/content.php', $data);	
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
				'lcat_name' => $this->input->post('category_name'),
				'foreign_name' => $this->input->post('np_category_name'),
				'description' => $this->input->post('category_desc'),
				'foreign_description' => $this->input->post('np_category_desc'),
				'cat_created' => date('Y-m-d H:i:s'),							
			);
			
			$data_trace = array(
				'record_desc' => "Category Us Section added ( ".$this->input->post('category_name')." )",
				'record_date' => date('Y-m-d H:i:s')
				
			);
			
			$this->load->model('latestcategory_model');
			$this->latestcategory_model->add_record($data);
			
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			redirect('latestcategory', 'refresh');
					
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
			 $this->load->model('latestcategory_model');
          $this->latestcategory_model -> delete_row();
          redirect('latestcategory', 'refresh');     
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
			$this->load->model('latestcategory_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->latestcategory_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('latest_category/content_show.php', $data);	
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
			$this->load->model('latestcategory_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->latestcategory_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('latest_category/content_edit.php', $data);	
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
			'lcat_id' => $this->input->post('category_id'),
			'lcat_name' => $this->input->post('category_name'),
			'foreign_name' => $this->input->post('np_category_name'),
			'description' => $this->input->post('category_desc'),
			'foreign_description' => $this->input->post('np_category_desc'),
			'status' => $this->input->post('category_status')
		);
		
		$data_trace = array(
			'record_desc' => "category Modified ( ".$this->input->post('category_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('latestcategory_model');
		$this->latestcategory_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('latestcategory/show/'.$data['lcat_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}