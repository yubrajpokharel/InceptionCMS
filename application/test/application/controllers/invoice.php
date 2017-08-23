<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Invoice extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('invoice_model');
			if ($query = $this-> invoice_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('invoice/list.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	
	public function listitems()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('invoice_model');
			if ($query = $this-> invoice_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('invoice/list.php', $data);	
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
			  $this->load->model('invoice_model');
          $this->invoice_model -> delete_row();
          redirect('invoice/', 'refresh');
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
			$this->load->model('invoice_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->invoice_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
         if ($query = $this->invoice_model -> get_individual_all_records())
        {
            $data['items'] = $query;
        }
		$this->load->view('invoice/content_show.php', $data);	
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
			$this->load->model('invoice_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->invoice_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('invoice/content_edit.php', $data);	
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
							'product_id' =>$this->input->post('product_id'),
							
							'payment_status' => $this->input->post('pack_type')
							
						);
		$this->load->model('invoice_model');
		$this->invoice_model->update_record($data); 
		//echo $data['package_id'];
        redirect('invoice/show/'.$data['product_id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}
	

}