<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Site extends CI_Controller {
	
	public function index(){
		if(!$this->session->userdata('logged_in'))
	   	{
			$this->load->model('first_step_model');
			if($this->first_step_model->issite_setup()){
				$this->initial_page();
			}else{
				$this->load->view('first_step/first_step');
			}
		}else{
			redirect('home');
		}
	}

	public function initial_page(){
			$this->load->view('welcome_header.php');
			$this->load->view('default.php');
			$this->load->view('footer.php');
		}

	public function set_site(){
		$this->load->model('first_step_model');

		$name = $this->input->post('name')." CMS";
		$full_name = $this->input->post('full_name');
		$user = $this->input->post('username');
		$pass = $this->input->post('password');
		$repass =  $this->input->post('repassword');

		if($pass == $repass){
			$data1 = array(
				"name" => $name
				);

			$data2 = array(
				"admin_full_name" => $full_name,
				"admin_user_id" => $user,
				"admin_password" => $pass
				);

			
			$do_save = $this->first_step_model->save_site_name($data1);
			$do_save_user = $this->first_step_model->save_user($data2);

			if(!empty($do_save) && !empty($do_save_user)){
				$this->initial_page();
			}else{
				redirect('site?err=somethingWrong');	
			}
		}else{
			redirect('site?err=passNotMatch');
		}
	}

}