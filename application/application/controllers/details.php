<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Details extends CI_Controller {
	
	function index()
	 {
	   if($this->session->userdata('logged_in'))
	   {
		 $session_data = $this->session->userdata('logged_in');
		 $data = array();
			$this->load->view('header.php');
			$this->load->model('details_model');
			if ($query = $this-> details_model -> get_records())
			{
				$data['records'] = $query;
			}
        	
        	$this->load->view('details/content.php', $data);	
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
				
					$data = array(
					
						'site_name' => $this->input->post('site_name'),
						'comp_country' => $this->input->post('country_name'),
						'comp_city' => $this->input->post('city_name'),
						'comp_street' => $this->input->post('street_name'),
						'comp_landline' => $this->input->post('contact_number'),
						'comp_mobile' => $this->input->post('mobile_number'),
						'comp_email' => $this->input->post('email_address'),
						'welcome_note' => $this->input->post('welcome'),
						'comp_desc' => $this->input->post('comp_desc'),
						'parking' => $this->input->post('parking'),
						'weelchair' => $this->input->post('wheelchair'),
						'local_attraction' => $this->input->post('local_attr')
					);
					
					$this->load->model('details_model');
					$this->details_model->add_record($data);
					redirect('details', 'refresh');
					}
				 else
			   {
				 //If no session, redirect to login page
				 redirect('login', 'refresh');
			   }
				
		}
		
		function update()
		{
			$data = array(
						'setup_id' => $this->input->post('setup_id'),
						'site_name' => $this->input->post('site_name'),
						'comp_country' => $this->input->post('country_name'),
						'comp_city' => $this->input->post('city_name'),
						'comp_street' => $this->input->post('street_name'),
						'comp_landline' => $this->input->post('contact_number'),
						'comp_mobile' => $this->input->post('mobile_number'),
						'comp_email' => $this->input->post('email_address'),
						'welcome_note' => $this->input->post('welcome'),
						'ready' => $this->input->post('parking'),
						'training' => $this->input->post('wheelchair'),
						'secondary' => $this->input->post('local_attr')
						
					);
					
					$data_trace = array(
						'record_desc' => "Site Detail Modified ( ".$this->input->post('site_name')." )",
						'record_date' => date('Y-m-d H:i:s')
					);
					
			$this->load->model('tracker_model');
			$this->tracker_model->add_record($data_trace);
			
			$this->load->model('details_model');
			$this->details_model -> update_record($data);
			redirect('details/show/'.$data['setup_id'], 'refresh');
		}
		
		function delete()
		{	   
			 $this->load->model('details_model');
			  $this->details_model -> delete_row();
			  redirect('staff', 'refresh');     
		}
		
		function show()
		{   
			$this->load->model('details_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->details_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('details/content_show.php', $data);	
			$this->load->view('footer.php');  
		}
	
		function edit()
		{   
			$this->load->model('details_model');
			$this->load->view('header.php');
			$data = array();
			if ($query = $this->details_model -> get_individual_records())
			{
				$data['records'] = $query;
			}
			$this->load->view('details/content_edit.php', $data);	
			$this->load->view('footer.php');  
		}
		


}