<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


$route['default_controller']	= "admin/home";
$route['404_override'] 			= '';

$route['category/(:any)'] 		= 'public/ncategory/category/$1';
$route['newsdetail/(:any)'] 	= 'public/ncategory/news/$1';
$route['images'] 				= 'public/ncategory/gallery/';
$route['images/'] 				= 'public/ncategory/gallery/';
$route['images/(:any)'] 		= 'public/ncategory/gallery_details/$1';

$route['videos'] 				= 'public/ncategory/vgallery/';
$route['videos/'] 				= 'public/ncategory/vgallery/';
$route['videos/(:any)'] 		= 'public/ncategory/vgallery_details/$1';

$route['contact-us'] 			= 'public/ncategory/contactus/';
$route['advertisement'] 		= 'public/ncategory/add/';
$route['about-green-paper']		= 'public/ncategory/aboutus/';

$route['pdf']					= 'public/ncategory/pdf/';

$route['blogs']					= 'public/ncategory/blog/';
$route['blogdetail/(:any)']		= 'public/ncategory/blogdetail/$1';

// CMS
$route['category/create'] 		= 'category/create';

/* End of file routes.php */
/* Location: ./application/config/routes.php */