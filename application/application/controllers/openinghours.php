<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Openinghours extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('openinghours_model');
			if ($query = $this->openinghours_model->get_records())
			{
				$data['records'] = $query;
			}

			

			$data['count'] = count($query);
        
        	$this->load->view('openinghours/content.php', $data);	
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
				'name' => $this->input->post('day'),
				'opening' => $this->input->post('opening'),
				'closing' => $this->input->post('closing')
			);
			$this->load->model('openinghours_model');
			$this->openinghours_model->add_record($data);
			redirect('openinghours', 'refresh');
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
			  $this->load->model('openinghours_model');
          $this->openinghours_model -> delete_row();
          redirect('openinghours', 'refresh');
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
			$this->load->model('openinghours_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->openinghours_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('openinghours/content_show.php', $data);	
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
			$this->load->model('openinghours_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->openinghours_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('openinghours/content_edit.php', $data);	
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
				'name' => $this->input->post('day'),
				'opening' => $this->input->post('opening'),
				'closing' => $this->input->post('closing')
			);

			print_r($data);

		$this->load->model('openinghours_model');
		$this->openinghours_model->update_record($data); 

        redirect('openinghours', 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

}