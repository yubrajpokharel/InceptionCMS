<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Testimonial extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('testimonial_model');
			if ($query = $this-> testimonial_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('testimonial/content.php', $data);	
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
	   		if($this->config->item('testimonial_image')) { //if about us image is on 
	   			$config['upload_path'] = './uploads/testimonial';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '1024';
				$config['encrypt_name'] = 'true';
				$this->load->library('upload', $config);

				
				
				if ( ! $this->upload->do_upload('pic'))
					{
						$error = array('error' => $this->upload->display_errors());		
						$this->load->view('header.php');
						$this->load->view('testimonial/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
			
						$data = array(
							'detail' => $this->input->post('name'),
							'contact_name' => $this->input->post('contact_name'),
							'pic' => $this->upload->file_name,
							'text' => $this->input->post('desc'),
							'added' => date('Y-m-d H:i:s'),							
						);
						
						
						$data_trace = array(
							'record_desc' => "testimonial added for ( ".$this->input->post('name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						make_thumb($this->upload->file_name, 'testimonial');
						$this->load->model('testimonial_model');
						$this->testimonial_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('testimonial', 'refresh');
					}
			}else{
						$data = array(
							'detail' => ucfirst($this->input->post('name')),
							'contact_name' => ucfirst($this->input->post('contact_name')),
							'text' => ucfirst($this->input->post('desc')),
							'added' => date('Y-m-d H:i:s'),							
						);

						$data_trace = array(
							'record_desc' => "blog added for ( ".$this->input->post('name')." )",
							'record_date' => date('Y-m-d H:i:s')
							
						);
						
						$this->load->model('testimonial_model');
						$this->testimonial_model->add_record($data);
						
						$this->load->model('tracker_model');
						$this->tracker_model->add_record($data_trace);
						redirect('testimonial', 'refresh');	
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
			 $this->load->model('testimonial_model');
          $this->testimonial_model -> delete_row();
          redirect('testimonial', 'refresh');     
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
			$this->load->model('testimonial_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->testimonial_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('testimonial/content_show.php', $data);	
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
			$this->load->model('testimonial_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->testimonial_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('testimonial/content_edit.php', $data);	
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
				'contact_name' => $this->input->post('name'),
				'detail' => $this->input->post('detail'),
				'text' => $this->input->post('desc'),
				'added' => date('Y-m-d H:i:s'),	
				'status' => $this->input->post('status')
			);
		
		$data_trace = array(
			'record_desc' => "testimonial Modified ( ".$this->input->post('name')." )",
			'record_date' => date('Y-m-d H:i:s')	
		);
		
		//echo $data['event_id'];
		$this->load->model('testimonial_model');
		$this->testimonial_model -> update_record($data); 
		
		$this->load->model('tracker_model');
		$this->tracker_model->add_record($data_trace);
		
        redirect('testimonial/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	function change_pro_pic()
		{
			$config['upload_path'] = './uploads/testimonial/';
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
					$this->load->view('testimonial/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('id'),
						'pic' => $this->upload->file_name
						
					);
					make_thumb($this->upload->file_name, 'testimonial');
					$this->load->model('testimonial_model');
					$this->testimonial_model->update_pro_pic($data);
					redirect('testimonial/show/'.$data['id'], 'refresh');
				}
						
		}

	public function do_resize($filename){
		$source_path = base_url().'uploads/testimonial/' . $filename;
		echo '\n TARGET PATH => '.$source_path;
		$target_path = base_url().'uploads/testimonial/thumb/';
		echo "\n"." TARGET PATH => ".$target_path;
		$config_manip = array(
			'image_library' => 'gd2',
			'source_image' => $source_path,
			'new_image' => $target_path,
			'maintain_ratio' => TRUE,
			'create_thumb' => TRUE,
			'thumb_marker' => '_thumb',
			'width' => 125,
			'height' => 200
		);
		$this->load->library('image_lib', $config_manip);
		if (!$this->image_lib->resize()) {
			echo $this->image_lib->display_errors();
		}
		// clear //
		$this->image_lib->clear();
	}

}