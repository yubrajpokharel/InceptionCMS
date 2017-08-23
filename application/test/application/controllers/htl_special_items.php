<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Htl_special_items extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('htl_special_items_model');
			if ($query = $this-> htl_special_items_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_special_items/content.php', $data);	
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
			$this->load->model('htl_special_items_model');
			if ($query = $this-> htl_special_items_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_special_items/list.php', $data);	
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

						$config['upload_path'] = './uploads/specialcategoryimages/';
						$config['allowed_types'] = 'gif|jpg|png';
						$config['max_size']	= '0';
						$config['max_width']  = '0';
						$config['max_height']  = '0';
						$config['encrypt_name'] = 'true';
			
						$this->load->library('upload', $config);
						
						if ( ! $this->upload->do_upload('cat_pic'))
							{
								$error = array('error' => $this->upload->display_errors());
								
								$this->load->view('header.php');
								$this->load->view('htl_special_items/content_error', $error);
								$this->load->view('footer.php');
							}
							else
							{
				
								$data = array(
									'name' => $this->input->post('name'),
									'desc' => $this->input->post('news_heading'),
									'price' => $this->input->post('news_desc'),
									'pack_id' => $this->input->post('pack_type'),
									'image' => $this->upload->file_name,
									'date' =>  date('Y-m-d')
				
								);
								$this->load->model('htl_special_items_model');
								$this->htl_special_items_model->add_record($data);
								redirect('htl_special_items', 'refresh');
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
			  $this->load->model('htl_special_items_model');
          $this->htl_special_items_model -> delete_row();
          redirect('htl_special_items/listitems/', 'refresh');
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
			$this->load->model('htl_special_items_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_special_items_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_special_items/content_show.php', $data);	
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
			$this->load->model('htl_special_items_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_special_items_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_special_items/content_edit.php', $data);	
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
							'id' =>$this->input->post('news_id'),
							'name' => $this->input->post('name'),
							'desc' => $this->input->post('news_heading'),
							'price' => $this->input->post('news_desc'),
							'pack_id' => $this->input->post('pack_type')
							
						);
		$this->load->model('htl_special_items_model');
		$this->htl_special_items_model->update_record($data); 
		//echo $data['package_id'];
        redirect('htl_special_items/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	function change_pro_pic()

		{
			$config['upload_path'] = './uploads/specialcategoryimages/';
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
					$this->load->view('htl_special_items/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('id'),
						'image' => $this->upload->file_name
					);
					$this->load->model('htl_special_items_model');
					$this->htl_special_items_model->update_pro_pic($data);
					redirect('htl_special_items/show/'.$data['id'], 'refresh');
				}
						
		}
	

}