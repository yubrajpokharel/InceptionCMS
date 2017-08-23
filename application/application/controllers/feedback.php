<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Feedback extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('feedback_model');
			if ($query = $this-> feedback_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('feedback/content.php', $data);	
			$this->load->view('footer.php');
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
			$this->load->model('feedback_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->feedback_model -> get_individual_records())
        {
            $data['records'] = $query;
        }

        $this->feedback_model -> change_seen_status();
		$this->load->view('feedback/content_show.php', $data);	
		$this->load->view('footer.php');  
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
			 $this->load->model('feedback_model');
          $this->feedback_model -> delete_row();
          redirect('feedback', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	


}