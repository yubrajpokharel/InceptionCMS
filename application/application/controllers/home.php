<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
	
	function index()
	{
		 if($this->session->userdata('logged_in'))
	   		{
				$this->load->model('home_model');

				$data['records'] = $this->home_model->get_ip_records();
				$data['page_visit'] = $this->home_model ->get_page_visit_records();
				//echo json_encode($data['page_visit']);

				$this->load->view('header.php');
				$this->load->view('home/content.php', $data);
				$this->load->view('main_footer.php');
			}
			else
		   {
			 //If no session, redirect to login page
			 redirect('login', 'refresh');
		   }
	}
	
}