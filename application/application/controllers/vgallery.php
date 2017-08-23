<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Vgallery extends CI_Controller {
	
	public function index(){
		if($this->session->userdata('logged_in'))
	   {
		
				$data = array();
				$this->load->view('header.php');
				//$this->load->view('staffs/content.php');
				$this->load->model('vgallery_model');
				if ($query = $this-> vgallery_model -> get_records())
				{
					$data['records'] = $query;
				}
			
				$this->load->view('videogallery/content.php', $data);	
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
				'gall_desc' => $this->input->post('gall_desc'),
				'gall_status' => $this->input->post('gall_status'),
				'gall_created' => date('Y-m-d H:i:s')
			);
			$this->load->model('vgallery_model');
			$this->vgallery_model->add_record($data);
			redirect('vgallery', 'refresh');
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
				  $this->load->model('vgallery_model');
				  $this->vgallery_model -> delete_row();
				  redirect('vgallery', 'refresh');
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
			$this->load->model('vgallery_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->vgallery_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('videogallery/content_show.php', $data);	
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
				$this->load->model('vgallery_model');
				$this->load->view('header.php');
				$data = array();
				if ($query = $this->vgallery_model -> get_individual_records())
				{
					$data['records'] = $query;
				}
				$this->load->view('videogallery/content_edit.php', $data);	
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
					'gall_desc' => $this->input->post('gall_desc'),
					'gall_status' => $this->input->post('gall_status'),
					);
				$this->load->model('vgallery_model');
				$this->vgallery_model->update_record($data); 
				redirect('vgallery/edit/'.$data['gall_id'], 'refresh');
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
				$this->load->model('vgallery_model');
				$this->load->view('header.php');
				$data = array();
				if ($query = $this->vgallery_model -> get_individual_gall_records())
				{
					$data['records'] = $query;
				}
				$this->load->view('videogallery/addimages.php', $data);	
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
			

	    	$config['upload_path'] = './uploads/gallery/videos/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '0';
				$config['max_width']  = '0';
				$config['max_height']  = '0';
				$config['encrypt_name'] = 'true';
	
				$this->load->library('upload', $config);
				
				
				
				if ( ! $this->upload->do_upload('cover'))
					{	
						
						$error = array('error' => $this->upload->display_errors());
						$this->load->view('header.php');
						$this->load->view('gallery/content_error.php', $error);
						$this->load->view('footer.php');
					}
					else
					{

						$link = $this->input->post('url');
						$video_id = explode("?v=", $link); // For videos like http://www.youtube.com/watch?v=...
						if (empty($video_id[1]))
						    $video_id = explode("/v/", $link); // For videos like http://www.youtube.com/watch/v/..

						$video_id = explode("&", $video_id[1]); // Deleting any other params
						$video_id = $video_id[0];

						$data = array(
								'gall_id' => $this->input->post('gall_id'),
								'title' => $this->input->post('title'),
								'video' => $video_id,
								'image' => $this->upload->file_name
							);

							

							$this->load->model('vgallery_model');
							$this->vgallery_model->add_images($data); 
							//echo "ssdfsdf".$data['gall_id'];
							redirect('vgallery/addimages/'.$data['gall_id'], 'refresh');
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

				  $this->load->model('vgallery_model');
				  $this->vgallery_model -> delete_ind_row();

				  redirect('vgallery/addimages/'.$gall_id, 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	

}