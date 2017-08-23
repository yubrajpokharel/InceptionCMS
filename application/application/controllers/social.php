<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Social extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('social_model');
			if ($query = $this-> social_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('social/content.php', $data);	
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
				'name' => $this->input->post('so_name'),
				'link' => $this->input->post('so_link')
			);
			$this->load->model('social_model');
			$this->social_model->add_record($data);
			redirect('social', 'refresh');
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
			  $this->load->model('social_model');
          $this->social_model -> delete_row();
          redirect('http://localhost/cms/social', 'refresh');
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
			$this->load->model('social_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->social_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('social/content_show.php', $data);	
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
			$this->load->model('social_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->social_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('social/content_edit.php', $data);	
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
			'name' => $this->input->post('so_name'),
			'link' => $this->input->post('so_link')
		);
		$this->load->model('social_model');
		$this->social_model->update_record($data); 
        redirect('social', 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	public function selection(){

		$name = $this->input->post('name');
		
		$this->load->model('social_model');
		$data = $this->social_model->check_selected($name);
		echo $data->link;
	}

}