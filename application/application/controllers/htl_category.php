<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Htl_category extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('category_model');
			if ($query = $this-> category_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('category/content.php', $data);	
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
						
						$data_trace = array(
							'record_desc' => "Category Us Section added ( ".$this->input->post('category_name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('category_model');
						$this->category_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('htl_category', 'refresh');			
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
			$this->load->model('category_model');
          	$this->category_model -> delete_row();
          	redirect('htl_category', 'refresh');     
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
			$this->load->model('category_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->category_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('category/content_show.php', $data);	
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
			$this->load->model('category_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->category_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('category/content_edit.php', $data);	
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
		
		$data_trace = array(
			'record_desc' => "category Modified ( ".$this->input->post('category_name')." )",
			'record_date' => date('Y-m-d H:i:s')
			
		);
		
		//echo $data['event_id'];
		$this->load->model('category_model');
		$this->category_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('htl_category/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

function change_pro_pic()
		{
			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			
			$config2['image_library'] = 'gd2';
			$config2['source_image']	= './uploads/thumbs/';
			$config2['create_thumb'] = TRUE;
			$config2['maintain_ratio'] = TRUE;
			$config2['width']	 = 175;
			$config2['height']	= 130;
			
			$this->load->library('image_lib', $config2); 
			$this->image_lib->resize();
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('cat_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('category/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'cat_id' => $this->input->post('cat_id'),
						'cat_pic' => $this->upload->file_name
						
					);
					
					$this->load->model('category_model');
					$this->category_model->update_pro_pic($data);
					redirect('category/show/'.$data['cat_id'], 'refresh');
				}
						
		}


}