<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('booking_model');
			if ($query = $this-> booking_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('booking/content.php', $data);	
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
			$this->load->model('booking_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->booking_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
        $this->booking_model -> change_seen_status();
		$this->load->view('booking/content_show.php', $data);	
		$this->load->view('footer.php');  
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	


}