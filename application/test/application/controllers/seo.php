<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Seo extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('seo_model');
			if ($query = $this-> seo_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('seo/content.php', $data);	
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
				'page_title' => $this->input->post('page_title'),
				'page_keywords' => $this->input->post('page_keywords'),
				'page_desc' => $this->input->post('page_desc'),
				'page_developer' => $this->input->post('page_developer'),
				'page_map' => $this->input->post('page_map')							
			);
			
			$data_trace = array(
				'record_desc' => "SEO Section added ( ".$this->input->post('page_title')." )",
				'record_date' => date('Y-m-d H:i:s')
				
			);
			
			$this->load->model('seo_model');
			$this->seo_model->add_record($data);
			
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			redirect('seo', 'refresh');
					
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
			 $this->load->model('seo_model');
          $this->seo_model -> delete_row();
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
			$this->load->model('seo_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->seo_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('seo/content_show.php', $data);	
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
			$this->load->model('seo_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->seo_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('seo/content_edit.php', $data);	
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
				'seo_id' =>$this->input->post('seo_id'),
				'page_title' => $this->input->post('page_title'),
				'page_keywords' => $this->input->post('page_keywords'),
				'page_desc' => $this->input->post('page_desc'),
				'page_developer' => $this->input->post('page_developer'),
				'page_map' => $this->input->post('page_map')
		);
		
		$data_trace = array(
			'record_desc' => "SEO Details Modified ( ".$this->input->post('page_title')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('seo_model');
		$this->seo_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('seo/show/'.$data['seo_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}