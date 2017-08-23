<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Htl_special extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('htl_special_model');
			if ($query = $this-> htl_special_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_special/content.php', $data);	
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
				
					
						$data = array(
							'name' => $this->input->post('category_name'),
							'desc' => $this->input->post('category_desc'),
							'date' => date('Y-m-d')							
						);
						
					
						
						$this->load->model('htl_special_model');
						$this->htl_special_model->add_record($data);
						
						redirect('htl_special', 'refresh');			
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
			$this->load->model('htl_special_model');
          	$this->htl_special_model -> delete_row();
          	redirect('htl_special', 'refresh');     
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
			$this->load->model('htl_special_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_special_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_special/content_show.php', $data);	
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
			$this->load->model('htl_special_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_special_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_special/content_edit.php', $data);	
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
							'id' => $this->input->post('category_id'),
							'name' => $this->input->post('category_name'),
							'desc' => $this->input->post('category_desc'),
							'status' => $this->input->post('category_status'),
							'date' => date('Y-m-d')							
						);
		
		
		$this->load->model('htl_special_model');
		$this->htl_special_model -> update_record($data); 
		
		
        redirect('htl_special/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}


}