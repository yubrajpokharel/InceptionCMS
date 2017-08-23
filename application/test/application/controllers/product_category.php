<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_category extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('product_category_model');
			if ($query = $this-> product_category_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('product_category/content.php', $data);	
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
		if($this->session->userdata('logged_in')){

				$session_data = $this->session->userdata('logged_in');

				$data = array(
					'cat_name' => ucfirst($this->input->post('category_name')),
					'cat_desc' => ucfirst($this->input->post('category_desc')),
					'cat_created' => date('Y-m-d H:i:s'),							
				);
				
				$data_trace = array(
					'record_desc' => "Product category added ( ".$this->input->post('category_name')." )",
					'record_date' => date('Y-m-d H:i:s')
				);
				
				$this->load->model('product_category_model');
				$this->product_category_model->add_record($data);
				
				$this->load->model('tracker_model');
				$this->tracker_model->add_record($data_trace);
				redirect('product_category', 'refresh');
						
		}else{
			 //If no session, redirect to login page
			 redirect('login', 'refresh');
		}
	}
	
	function delete()
    {	  
		if($this->session->userdata('logged_in')){ 
			 $this->load->model('product_category_model');
	         $this->product_category_model -> delete_row();
	         redirect('product_category', 'refresh');     
		}else{
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	
	function show()
    {   
		if($this->session->userdata('logged_in')){
			$this->load->model('product_category_model');
			$this->load->view('header.php');
	        $data = array();
	        if ($query = $this->product_category_model -> get_individual_records())
	        {
	            $data['records'] = $query;
	        }
			$this->load->view('product_category/content_show.php', $data);	
			$this->load->view('footer.php');  
		}else{
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	function edit()
    {   
		if($this->session->userdata('logged_in'))
	   	{
			$this->load->model('product_category_model');
			$this->load->view('header.php');
	        $data = array();

	        if ($query = $this->product_category_model -> get_individual_records()){
	            $data['records'] = $query;
	        }

			$this->load->view('product_category/content_edit.php', $data);	
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
			'cat_id' => $this->input->post('category_id'),
			'cat_name' => ucfirst($this->input->post('category_name')),
			'cat_desc' => ucfirst($this->input->post('category_desc')),
			'cat_status' => $this->input->post('category_status')
		);
		
		$data_trace = array(
			'record_desc' => "category Modified ( ".$this->input->post('category_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('product_category_model');
		$this->product_category_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('product_category/show/'.$data['cat_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}