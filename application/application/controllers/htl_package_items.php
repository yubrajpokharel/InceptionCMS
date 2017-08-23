<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Htl_package_items extends CI_Controller {
	
	public function index()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			//$this->load->view('staffs/content.php');
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_records())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/content.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	public function breakfast()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_records(1))
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/breakfast.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 redirect('login', 'refresh');
	   }
	}

	public function lunch()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_records(2))
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/lunch.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 redirect('login', 'refresh');
	   }
	}

	public function dinner()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_records(3))
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/dinner.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
		 redirect('login', 'refresh');
	   }
	}

	public function bar()
	{
		if($this->session->userdata('logged_in'))
	    {	
			$data = array();
			$this->load->view('header.php');
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_records(4))
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/bar.php', $data);	
			$this->load->view('footer.php');
		}
	   else
	   {
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
			$this->load->model('htl_package_items_model');
			if ($query = $this-> htl_package_items_model -> get_list())
			{
				$data['records'] = $query;
			}
        
        	$this->load->view('htl_package_items/list.php', $data);	
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
						'name' => $this->input->post('name'),
						'short_desc' => $this->input->post('sdesc'),
						'desc' => $this->input->post('news_heading'),
						'price' => $this->input->post('news_desc'),
						'pack_id' => $this->input->post('cat'),
						'date' =>  date('Y-m-d')
					);

					$redirect = $this->input->post('rdr');
					

					//echo json_encode($data);

					$this->load->model('htl_package_items_model');
					$item_id = $this->htl_package_items_model->add_record($data);
					redirect('htl_package_items/show/'.$item_id, 'refresh');
									
			}
			 else
		   {
				 //If no session, redirect to login page
			 redirect('login', 'refresh');
		   }
				
	}
	
	function delete($id, $rdr)
    {	 
		if($this->session->userdata('logged_in'))
	    {  
		  $this->load->model('htl_package_items_model');
          $this->htl_package_items_model -> delete_row($id);

          redirect('htl_package_items/'.$rdr, 'refresh');
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
			$this->load->model('htl_package_items_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_package_items_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_package_items/content_show.php', $data);	
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
			$this->load->model('htl_package_items_model');
		$this->load->view('header.php');
        $data = array();
        if ($query = $this->htl_package_items_model -> get_individual_records())
        {
            $data['records'] = $query;
        }
		$this->load->view('htl_package_items/content_edit.php', $data);	
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
						'name' => $this->input->post('name'),
						'short_desc' => $this->input->post('sdesc'),
						'desc' => $this->input->post('news_heading'),
						'price' => $this->input->post('news_desc'),
						'date' =>  date('Y-m-d')
	
					);


		$this->load->model('htl_package_items_model');
		$this->htl_package_items_model->update_record($data); 
		//echo $data['package_id'];
        redirect('htl_package_items/show/'.$data['id'], 'refresh');
		}
	   else
	   {
		 //If no session, redirect to login page
		 redirect('login', 'refresh');
	   }
	}

	function change_pro_pic()
		{
			$config['upload_path'] = './uploads/menu/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			

			$this->load->library('image_lib', $config); 
			$this->image_lib->resize();
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('htl_package_items/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('id'),
						'image1' => $this->upload->file_name
					);

					$this->do_resize($this->upload->file_name);
					
					$this->load->model('htl_package_items_model');
					$this->htl_package_items_model->update_pro_pic($data);
					redirect('htl_package_items/show/'.$data['id'], 'refresh');
				}
						
		}
	
	function change_pro_pic2()
		{
			$config['upload_path'] = './uploads/menu/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';
			

			$this->load->library('image_lib', $config); 
			$this->image_lib->resize();
			

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('pic'))
				{
					$error = array('error' => $this->upload->display_errors());
					
					$this->load->view('header.php');
					$this->load->view('htl_package_items/content_error', $error);
					$this->load->view('footer.php');
				}
				else
				{
					$data = array(
						'id' => $this->input->post('id'),
						'image2' => $this->upload->file_name
					);

					$this->do_resize($this->upload->file_name);
					
					$this->load->model('htl_package_items_model');
					$this->htl_package_items_model->update_pro_pic($data);
					redirect('htl_package_items/show/'.$data['id'], 'refresh');
				}
						
		}

	public function selection(){

		$id = $this->input->post('id');
		$action = $this->input->post('action');
		
		$this->load->model('htl_package_items_model');
		$data = $this->htl_package_items_model->check_selected();

		if(count($data) >= 4 && $action == 'on') {
			echo "false";
		}else{
			if($action == "on"){
				$this->htl_package_items_model->make_selected($id, 1);
				echo 'true';
			}else if($action == "off"){
				$this->htl_package_items_model->make_selected($id, 0);
				echo 'removed';
			}
			
		}

		
		
	}

	public function do_resize($filename){
		$config['upload_path'] = './uploads/menu/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '0';
			$config['max_width']  = '0';
			$config['max_height']  = '0';
			$config['encrypt_name'] = 'true';

		$this->load->library('upload', $config);
		$source_path = base_url().'uploads/menu/' . $filename;
		//echo '\n TARGET PATH => '.$source_path;
		//die();
		$target_path = base_url().'uploads/menu/thumb/';
		//echo "\n"." TARGET PATH => ".$target_path;
		$config_manip = array(
			'image_library' => 'gd2',
			'source_image' => $source_path,
			'new_image' => $target_path,
			'maintain_ratio' => TRUE,
			'create_thumb' => TRUE,
			'thumb_marker' => '_thumb',
			'width' => 300,
			'height' => 200
		);
		$this->load->library('image_lib', $config_manip);
		if (!$this->image_lib->resize()) {
			echo $this->image_lib->display_errors();
			die();
		}
		// clear //
		$this->image_lib->clear();
	}
	
	

}