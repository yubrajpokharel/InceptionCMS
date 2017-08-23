<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();

		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->library('security');
		
	}

	function index(){
		$this->template->set('title', 'Greenpaper.com');
		$this->template->set('desc', 'Providing uptodate information related to Nepal');
		$this->template->load('public/templates', 'public/home');
	}
}