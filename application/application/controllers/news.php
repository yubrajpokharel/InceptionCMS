<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('news_model');
			if ($query = $this-> news_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('news/content.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	public function listnews()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('news_model');
			if ($query = $this-> news_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('news/list.php', $data);	
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
				$config['upload_path'] = './uploads/news/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size']	= '0';
				$config['max_width']  = '0';
				$config['max_height']  = '0';
				$config['encrypt_name'] = 'true';
	
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('news_pic'))
					{
						$error = array('error' => $this->upload->display_errors());
						
						$this->load->view('header.php');
						$this->load->view('news/content_error', $error);
						$this->load->view('footer.php');
					}
					else
					{
						$data = array(
							'news_heading' => $this->input->post('news_heading'),
							'reporter' => $this->input->post('news_reporter'),
							'news_description' => $this->input->post('news_desc'),
							'news_image' => $this->upload->file_name,
							'category_id' => $this->input->post('pack_type'),
							'is_headline' => $this->input->post('headline'),
							'news_posted_on' =>  date('Y-m-d H:i:s')				
						);
						make_thumb_custom($this->upload->file_name, 'news', 150, 200);
						$this->load->model('news_model');
						$this->news_model->add_record($data);
						redirect('news', 'refresh');
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
			  $this->load->model('news_model');
          $this->news_model -> delete_row();
          redirect('news/listnews/', 'refresh');
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
			$this->load->model('news_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->news_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('news/content_show.php', $data);	
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
			$this->load->model('news_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->news_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('news/content_edit.php', $data);	
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
							'news_id' =>$this->input->post('news_id'),
							'news_heading' => $this->input->post('news_heading'),
							'reporter' => $this->input->post('reporter'),
							'news_description' => $this->input->post('news_desc'),
							'category_id' => $this->input->post('pack_type'),
							'is_headline' => $this->input->post('headline')
							
						);
		$this->load->model('news_model');
		$this->news_model->update_record($data); 
		//echo $data['package_id'];
        redirect('news/edit/'.$data['news_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	function change_pro_pic()
		{
			$config['upload_path'] = './uploads/news/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pack_pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('news/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'news_id' => $this->input->post('pack_id'),
						'news_image' => $this->upload->file_name
						
					);
					make_thumb_custom($this->upload->file_name, 'news', 150, 200);
					$this->load->model('news_model');
					$this->news_model->update_pro_pic($data);
					redirect('news/show/'.$data['news_id'], 'refresh');
				}
						
		}
	
	

}