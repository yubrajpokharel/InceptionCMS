<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class vacancy_replies extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('vacancy_replies_model');
			if ($query = $this-> vacancy_replies_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('vacancy_replies/content.php', $data);	
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
			$this->load->model('vacancy_replies_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->vacancy_replies_model -> get_individual_records())
        {
            $data['records'] = $query;
        }

        $this->vacancy_replies_model -> change_seen_status();

		$this->load->view('vacancy_replies/content_show.php', $data);	
		$this->load->view('footer.php');  
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	


}