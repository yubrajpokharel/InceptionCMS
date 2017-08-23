<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Newsletter extends CI_Controller {
	
	public function index()
	{	
	if($this->session->userdata('logged_in'))
	   {
			$data = array();
			$this->load->view('header.php');
			$this->load->model('newsletter_model');
			if ($query = $this-> newsletter_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('newsletter/content.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	public function send_mail(){
		$this->load->view('header.php');
		$this->load->view('newsletter/content_edit.php');	
		$this->load->view('footer.php'); 	
	}

	public function sendmail(){
		$this->load->model('newsletter_model');
		$message = $this->input->post('page_title');

		$email_addresses = $this-> newsletter_model -> get_records();
	
		$this->load->library('email');
		foreach ($email_addresses as $e)
			{
				//echo $e->name."=>".$e->email;
			    $this->email->clear();
			    $this->email->to($e->email);
			    $this->email->from('yubraj.pokharel555@gmail.com');
			    $this->email->subject('HiSocietea');
			    $this->email->message('Hi '.$e->name.', <br>'.$message);
			    $this->email->send();
			}
	}
		
	
	
	function delete()
    {	  
		if($this->session->userdata('logged_in'))
	   	{ 
			 $this->load->model('newsletter_model');
          $this->newsletter_model -> delete_row();
          redirect('newsletter', 'refresh');     
		  }
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
    }
	
	
	
	

}