<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('product_model');
			if ($query = $this-> product_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('product/content.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	public function listitems()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('product_model');
			if ($query = $this-> product_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('product/list.php', $data);	
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

						$config['upload_path'] = './uploads/product/';
						$config['allowed_types'] = 'gif|jpg|png';
						$config['max_size']	= '0';
						$config['max_width']  = '0';
						$config['max_height']  = '0';
						$config['encrypt_name'] = 'true';
			
						$this->load->library('upload', $config);
						
						if ( ! $this->upload->do_upload('pic'))
							{
								$error = array('error' => $this->upload->display_errors());
								
								$this->load->view('header.php');
								$this->load->view('product/content_error', $error);
								$this->load->view('footer.php');
							}
							else
							{
				
								$data = array(
									'name' => $this->input->post('name'),
									'description' => $this->input->post('desc'),
									'price' => $this->input->post('price'),
									'category_id' => $this->input->post('cat_type'),
									'image' => $this->upload->file_name,
									'date_added' =>  date('Y-m-d')
								);
								make_thumb($this->upload->file_name, 'product');
								
								$this->load->model('product_model');
								$this->product_model->add_record($data);
								redirect('product', 'refresh');
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
			  $this->load->model('product_model');
          $this->product_model -> delete_row();
          redirect('product/listitems/', 'refresh');
          //$this->index();
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
			$this->load->model('product_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->product_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('product/content_show.php', $data);	
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
			$this->load->model('product_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->product_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('product/content_edit.php', $data);	
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
							'id' =>$this->input->post('id'),
							'name' => $this->input->post('name'),
							'description' => $this->input->post('desc'),
							'price' => $this->input->post('price'),
							'category_id' => $this->input->post('cat_type'),
						);

		$this->load->model('product_model');
		$this->product_model->update_record($data); 
		//echo $data['package_id'];
        redirect('product/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	function change_pro_pic()

		{
			$config['upload_path'] = './uploads/product/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			
			
			
			$this->load->library('image_lib', $config); 
			$this->image_lib->resize();
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('product/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('id'),
						'image' => $this->upload->file_name
					);
					make_thumb($this->upload->file_name, 'product');
					$this->load->model('product_model');
					$this->product_model->update_pro_pic($data);
					redirect('product/show/'.$data['id'], 'refresh');
				}
						
		}
	

}