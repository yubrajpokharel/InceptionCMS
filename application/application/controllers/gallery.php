<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gallery extends CI_Controller {
	
	public function index(){
		if($this->session->userdata('logged_in'))
	   {
		
				$data = array();
				$this->load->view('header.php');
				//$this->load->view('staffs/content.php');
				$this->load->model('gallery_model');
				if ($query = $this-> gallery_model -> get_records())
				{
					$data['records'] = $query;
				}
				
				$data['total'] = count($query);
				$this->load->view('gallery/content.php', $data);	
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
				'gall_name' => $this->input->post('gall_name'),
				'gall_type' => $this->input->post('gall_type'),
				'gall_desc' => $this->input->post('gall_desc'),
				'gall_status' => $this->input->post('gall_status'),
				'gall_created' => date('Y-m-d H:i:s')
			);
			$this->load->model('gallery_model');
			$this->gallery_model->add_record($data);
			redirect('gallery', 'refresh');
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
				  $this->load->model('gallery_model');
				  $this->gallery_model -> delete_row();
				  redirect('gallery', 'refresh');
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
			$this->load->model('gallery_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->gallery_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('gallery/content_show.php', $data);	
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
				$this->load->model('gallery_model');
				$this->load->view('header.php');
				$data = array();
				if ($query = $this->gallery_model -> get_individual_records())
				{
					$data['records'] = $query;
				}
				$this->load->view('gallery/content_edit.php', $data);	
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
					'gall_id' => $this->input->post('gall_id'),
					'gall_name' => $this->input->post('gall_name'),
					'gall_type' => $this->input->post('gall_type'),
					'gall_desc' => $this->input->post('gall_desc'),
					'gall_status' => 1,
					);
				$this->load->model('gallery_model');
				$this->gallery_model->update_record($data); 
				redirect('gallery/edit/'.$data['gall_id'], 'refresh');
			}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	function addimages()
	{
		if($this->session->userdata('logged_in'))
	    {
				$this->load->model('gallery_model');
				$this->load->view('header.php');
				$data = array();
				if ($query = $this->gallery_model -> get_individual_gall_records())
				{
					$data['records'] = $query;
				}
				$this->load->view('gallery/addimages.php', $data);	
				$this->load->view('footer.php');  
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	function uploadpic()
	{
		if($this->session->userdata('logged_in'))
	    {
				$config['upload_path'] = './uploads/gallery/';
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
						$this->load->view('gallery/content_error.php', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$filename = $this->upload->file_name;
						make_thumb($filename, 'gallery');
						
						$data = array(
								'gall_id' => $this->input->post('gall_id'),
								'image_name' => $this->upload->file_name,
								'caption' => $this->input->post('caption')
							);

							make_thumb($this->upload->file_name, 'gallery');
							
							$this->load->model('gallery_model');
							$this->gallery_model->add_images($data); 
							//echo "ssdfsdf".$data['gall_id'];
							redirect('gallery/addimages/'.$data['gall_id'], 'refresh');
					}
			}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
		
	}
	
	function delete_individual_image()
	{
		if($this->session->userdata('logged_in'))
	    {
	    		  $gall_id = $this->uri->segment(4);
				  $this->load->model('gallery_model');
				  $this->gallery_model -> delete_ind_row();
				  redirect('gallery/addimages/'.$gall_id, 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}	
}