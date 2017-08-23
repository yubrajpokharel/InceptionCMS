<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		Yubraj Pokharel
 * @copyright	Copyright (c) 2015, Daanfe, Inc.
 * @link		http://daanfe.com/library/codeigniter/inception_helper
 * @since		Version 1.0
 * @filesource
 */
function db_instance(){
	$ci=& get_instance();
    $ci->load->database(); 

    return $ci;
}

 function get_site_name()
	{
		$ci = db_instance();
		
		$check_sql = "Select * from site_setting";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		

		if(!empty($row)) 
			echo $row->name;
		else 
			return "Inception CMS";
	}

/*************************************************************
 *
 * About us Helpers
 *
 ************************************************************/

function get_aboutus()
	{
		$ci = db_instance();

		$check_sql = "Select * from about_us where about_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_aboutus($id='')
	{
		$ci = db_instance();

		$check_sql = "Select * from about_us where about_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * Services Helpers
 *
 ************************************************************/

function get_services()
	{
		$ci = db_instance();

		$check_sql = "Select * from services where service_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_services($id='')
	{
		$ci = db_instance();

		$check_sql = "Select * from services where service_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * Staffs Helpers
 *
 ************************************************************/

function get_staffs()
	{
		$ci = db_instance();

		$check_sql = "Select * from staff_details where staff_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_staff($id='')
	{
		$ci = db_instance();

		$check_sql = "Select * from staff_details where staff_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}


/*************************************************************
 *
 * Image Crousal Helpers
 *
 ************************************************************/
function get_crousal_image_list()
	{
		$ci = db_instance();

		$check_sql = "Select * from crousal where crousal_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * Image Gallery Helpers
 *
 ************************************************************/

function get_image_gallery_list()
	{
		$ci = db_instance();

		$check_sql = "Select * from gallery where gall_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_gallery_details($id){
	$ci = db_instance();

		$check_sql = "Select gall_id, gall_desc, gall_name from gallery where gall_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
}

function get_ind_image_gallery_images_list($id='')
	{
		$ci = db_instance();

		$check_sql = "Select * from gall_images where gall_id = '$id' AND image_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_image_gallery_images_list_with_limit($id='', $limit='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from gall_images where gall_id = '$id' AND image_status = 1 LIMIT $limit";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_latest_images(){
	$ci = db_instance(); 

		$check_sql = "Select * from gall_images where image_status = 1 ORDER BY gall_img_id desc LIMIT 4";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}


/*************************************************************
 *
 * Video Gallery Helpers
 *
 ************************************************************/

function get_vgallery_details($id){
	$ci = db_instance();

		$check_sql = "Select gall_id, gall_desc, gall_name from video_gallery where gall_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
}

function get_video_gallery_list()
	{
		$ci = db_instance();

		$check_sql = "Select * from video_gallery where gall_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_video_gallery_videos_list($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from gall_videos where gall_id = '$id' AND video_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_video_gallery_videos_list_with_limit($id='', $limit='')
	{
		$ci = db_instance();

		$check_sql = "Select * from gall_videos where gall_id = '$id' AND video_status = 1 LIMIT $limit";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_latest_videos(){
	$ci = db_instance(); 

		$check_sql = "Select * from gall_videos ORDER BY gall_vid_id desc LIMIT 4";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}
/*************************************************************
 *
 * events Helpers
 *
 ************************************************************/

function get_events()
	{
		$ci = db_instance(); 

		$check_sql = "Select * from events_detail where event_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_event($id='')
	{
		$ci = db_instance();

		$check_sql = "Select * from events_detail where event_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * notice Helpers
 *
 ************************************************************/

function get_notices()
	{
		$ci = db_instance(); 

		$check_sql = "Select * from notice where latest_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_ind_notice($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from notice where notice_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * news Helpers
 *
 ************************************************************/

function check_category($id){
		$ci = db_instance();
		$check_sql = "Select * from categories where cat_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		if(count($row) > 0) return TRUE; 
		else return FALSE;
}

function get_categories()
	{
		$ci = db_instance();

		$check_sql = "Select * from categories where cat_status = 1 ORDER BY ord ASC";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function check_news($id){
		$ci = db_instance();
		$check_sql = "Select * from news where news_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		if(count($row) > 0) return TRUE; 
		else return FALSE;
}

function check_blog($id){
		$ci = db_instance();
		$check_sql = "Select * from testimonial where id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		if(count($row) > 0) return TRUE; 
		else return FALSE;
}

function get_category_name($id)
	{
		$ci = db_instance();

		$check_sql = "Select cat_name from categories where cat_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo $row->cat_name;
	}

function get_category_name_only($id)
	{
		$ci = db_instance();

		$check_sql = "Select cat_name from categories where cat_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return $row->cat_name;
	}

function get_all_news()
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where news_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_news_by_category($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where category_id = '$id' AND news_status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function fetch_news_with_category($id='',$limit, $start) {

		$ci = db_instance(); 

        $check_sql = "Select *
						FROM news 
						WHERE category_id= '$id'
						 ORDER BY news_posted_on DESC
						LIMIT $limit OFFSET $start";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
   }

function fetch_blog($limit, $start) {

		$ci = db_instance(); 

        $check_sql = "Select *
						FROM testimonial 
						 ORDER BY added DESC
						LIMIT $limit OFFSET $start";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
   }

function get_similar_news($cat_id, $news_id){
		$ci = db_instance(); 
		$check_sql = "Select * from news where category_id = '$cat_id' AND news_id <> '$news_id' AND news_status = '1' ORDER BY news_posted_on DESC LIMIT 10";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}

function get_limited_news_by_category_except_id($id='', $news_id='', $limit ='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where category_id = '$id' AND news_id <> '$news_id' AND news_status = '1' ORDER BY news_posted_on DESC LIMIT 5";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_top_headline(){
	$ci = db_instance(); 

		$check_sql = "Select * from news where news_status = '1' AND is_headline = 1 ORDER BY news_posted_on DESC LIMIT 6";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}

function get_3_top_headline(){
	$ci = db_instance(); 

		$check_sql = "Select * from news where news_status = '1' AND is_headline = 1 ORDER BY news_posted_on DESC LIMIT 3";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}

function get_limited_news_by_category($id='', $limit ='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where category_id = '$id' AND news_status = '1' ORDER BY news_posted_on DESC LIMIT 5";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_top_news_by_category($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where category_id = '$id' AND news_status = '1' ORDER BY news_posted_on DESC LIMIT 1";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_ind_news($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from news where news_id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function increase_counter($id){
	$ci = db_instance(); 
	$check_sql = "update news set counter = counter + 1 where news_id = '$id';";
	$check = $ci->db->query($check_sql);
}

function get_famous_news(){
		$ci = db_instance(); 
		$check_sql = "Select * from news where news_status = '1'  ORDER BY counter DESC LIMIT 3";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}


/*************************************************************
 *
 * Advertisement Helpers
 *
 ************************************************************/
function get_top_bottom_add($val="")
	{
		$ci = db_instance(); 
		$check_sql = "Select * from onpageadd where add_page = '$val'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		if($row != NULL){
			$add_holder = '
				<div class="container2 mdl-cell--hide-phone">
	                <div class="mdl-grid">
	                    <div class="mdl-cell mdl-cell--12-col">
	                        <a href="'.$row->add_link.'"><img class="long-add" src="'.base_url().'uploads/add/'.$row->add_doc.'"></a>
	                    </div>
	                </div>
	            </div>
			';
			echo  $add_holder;
		}
	}

function get_top_side_adds(){
	$ci = db_instance(); 
		$check_sql = "Select * from advertisement where add_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}

function get_jacket_adds(){
	$ci = db_instance(); 
		$check_sql = "Select * from jacket_advertisement where add_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}

function get_side_adds(){
	$ci = db_instance(); 
		$check_sql = "Select * from topadd where add_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
}



/*************************************************************
 *
 * Products Helpers
 *
 ************************************************************/

function get_product_categories()
	{
		$ci = db_instance();

		$check_sql = "Select * from product_category where cat_status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_products()
	{
		$ci = db_instance(); 
		$check_sql = "Select products.*, product_category.cat_name as cat
						FROM products
						LEFT JOIN product_category ON
						product_category.cat_id = products.category_id AND  products.status = 1";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_products_with_limit($limit='')
	{
		$ci = db_instance();

		$check_sql = "Select * from products where status = 1 LIMIT $limit";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_products_by_category($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select * from products where category_id = '$id' AND status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}


function get_ind_product($id='')
	{
		$ci = db_instance(); 

		$check_sql = "Select products.*, product_category.cat_name as cat
						FROM products
						LEFT JOIN product_category ON
						products.id = '$id' AND product_category.cat_id = products.category_id";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}


/*************************************************************
 *
 * contact Helpers
 *
 ************************************************************/

function get_welcome_note()
	{
		$ci = db_instance();

		$check_sql = "Select welcome_note from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

function get_comapny_description()
	{
		$ci = db_instance();

		$check_sql = "Select comp_desc from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_comapny_numbers()
	{
		$ci = db_instance();

		$check_sql = "Select comp_landline as landline1, comp_landline_2 as landline2, comp_mobile as mobile1, comp_mobile_2 as mobile2 from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_comapny_email()
	{
		$ci = db_instance();

		$check_sql = "Select comp_email as email1, comp_email_2 as email2 from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_comapny_address()
	{
		$ci = db_instance();

		$check_sql = "Select comp_country as country, comp_city as city, comp_city_2 as city2, comp_street as street, comp_street_2 as street2 from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_adddetail()
	{
		$ci = db_instance();

		$check_sql = "Select ready from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}

function get_contactetail()
	{
		$ci = db_instance();

		$check_sql = "Select training from intial_setup where setup_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return json_encode($row);
	}



/*************************************************************
 *
 * vacencies Helpers
 *
 ************************************************************/

function get_vacencies()
	{
		$ci = db_instance();

		$check_sql = "Select * from vacency where status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

function get_ind_vacency($id="")
	{
		$ci = db_instance();

		$check_sql = "Select * from vacency where id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

// return total number of vacancies replies
function check_vacency()
	{
		$ci = db_instance();

		$check_sql = "Select * from vacancy_replies where is_view = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		if(!empty($row)) 
			return count($row);
		else 
			return FALSE;

	}



/*************************************************************
 *
 * Portfolio Helpers
 *
 ************************************************************/

function get_portfolio()
	{
		$ci = db_instance();

		$check_sql = "Select * from portfolio where status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

/*************************************************************
 *
 * Testimonial Helpers
 *
 ************************************************************/

function get_testimonial()
	{
		$ci = db_instance();

		$check_sql = "Select * from testimonial where status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

function get_ind_testimonial($id)
	{
		$ci = db_instance();

		$check_sql = "Select * from testimonial where id = '$id'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();

		return json_encode($row);

	}

function get_testimonial_with_limit()
	{
		$ci = db_instance();

		$check_sql = "Select * from testimonial where status = '1' LIMIT 5";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

/*************************************************************
 *
 * Social links Helpers
 *
 ************************************************************/

function get_social_links()
	{
		$ci = db_instance();

		$check_sql = "Select * from contact_links where status = '1'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);

	}

function social_link($name = ""){
		$ci = db_instance();
		$check_sql = "Select * from contact_links where name='$name'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		return $row->link;	
}


/*************************************************************
 *
 * Booking Helpers
 * Return total number of Booking requests by the customers
 *
 ************************************************************/

function check_booking()
	{
		$ci = db_instance();

		$check_sql = "Select * from booking where is_view = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		if(!empty($row)) 
			return count($row);
		else 
			return FALSE;

	}


/*************************************************************
 *
 * feedbacks Helpers
 * Return total number of Feedbacks by the customers
 *
 ************************************************************/

function check_feedback()
	{
		$ci = db_instance();

		$check_sql = "Select * from feedback where is_view = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		if(!empty($row)) 
			return count($row);
		else 
			return FALSE;
	}

/*************************************************************
 *
 * country view Helpers
 * Return total number of vsits by the customers
 *
 ************************************************************/

function get_top10VisitedCountries()
	{
		$ci = db_instance(); 

		$check_sql = "SELECT country,  COUNT(country) as total FROM ip_track GROUP BY country ORDER BY total desc LIMIT 10";
		$check = $ci->db->query($check_sql);
		$row = $check->result();

		return json_encode($row);
	}

function get_totaltop10Visit()
	{
		$ci = db_instance();

		$check_sql = "SELECT COUNT(country) as total FROM ip_track";
		$check = $ci->db->query($check_sql);
		$row = $check->row();

		return $row->total;
	}

/*************************************************************
 *
 * New updates  Helpers
 * Return new updates in the cms
 *
 ************************************************************/

function get_notification_updates()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT record_desc FROM records ORDER BY record_date desc LIMIT 10";
		$check = $ci->db->query($check_sql);
		$row = $check->result();
		return json_encode($row);
	}

/*************************************************************
 *
 * SEO  Helpers
 *
 ************************************************************/
function get_MetaTags(){
	get_pageTitle();
	get_pageKeywords();
	get_pageDesc();
	get_pageDeveloper();
}

function get_pageTitle()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT page_title FROM seo where seo_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo '
	<meta name="title" content="'.$row->page_title.'">
	<meta property="og:title" content="'.$row->page_title.'" />
	<meta property="og:site_name" content="'.$row->page_title.'" />
	<meta property="article:publisher" content="'.$row->page_title.'" />
	<meta property="twitter:title" content="'.$row->page_title.'" />
	<meta itemprop="name" content="'.$row->page_title.'">
		';
	}

function get_pageKeywords()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT page_keywords FROM seo where seo_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo '
	<meta name="keywords" content="'.$row->page_keywords.'">
		';
	}

function get_pageDesc()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT page_desc FROM seo where seo_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo '
	<meta name="description" content="'.$row->page_desc.'">
	<meta property="og:description" content="'.$row->page_desc.'" />
	<meta itemprop="description" content="'.$row->page_desc.'">	
		';
	}

function get_pageDeveloper()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT page_developer FROM seo where seo_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo '
	<meta name="author" content="'.$row->page_developer.'">
		';
	}

function get_GoogleMap()
	{
		$ci = db_instance(); 
		$check_sql = "SELECT page_map FROM seo where seo_id = '0'";
		$check = $ci->db->query($check_sql);
		$row = $check->row();
		echo $row->page_map;
	}

function individual_news_meta_tags($title, $desc, $image, $url){
	$meta_tags =  '
	<!-- Facebook -->
	<meta property="og:title" content="'.$title.'" />
	<meta property="og:site_name" content="Green Paper Nepal"/>
	<meta property="og:url" content="'.$url.'" />
	<meta property="og:description" content="'.$desc.'" />
	<meta property="og:type" content="article" />
	<meta property="article:author" content="Green paper" />
	<meta property="article:publisher" content="https://www.greenpaperfirst.com" />
	<meta property="og:image" content="'.$image.'" />

	<!-- Twitter Card data -->
	<meta name="twitter:card" content="article">
	<meta name="twitter:title" content="'.$title.'">
	<meta name="twitter:description" content="'.$desc.'">
	<meta name="twitter:creator" content="http://www.greenpaperfirst.com">
	<meta name="twitter:image" content="'.$image.'">

	<!-- Google+ -->
	<meta itemprop="name" content="'.$title.'">
	<meta itemprop="description" content="'.$desc.'">
	<meta itemprop="image" content="'.$image.'">
';

return $meta_tags;
}
/* End of file inception_helper.php */
/* Location: ./system/helpers/inception_helper.php */