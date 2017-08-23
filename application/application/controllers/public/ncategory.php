<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ncategory extends CI_Controller{
	

    public function category($id='') {

        if(check_category($id)){
            $config = array();
            $config["base_url"] = base_url('category').'/'.$id;
            $config["total_rows"] = count(json_decode(get_news_by_category($id)));
            $config["per_page"] = 10;
            $config["uri_segment"] = 3;

            //config for bootstrap pagination class integration
            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['first_link'] = false;
            $config['last_link'] = false;
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['prev_link'] = '&laquo';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';
            $config['next_link'] = '&raquo';
            $config['next_tag_open'] = '<li>';
            $config['next_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';

            $this->pagination->initialize($config);
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
            $data["results"] = json_decode(fetch_news_with_category($id,$config["per_page"], $page));
            $data['pagination'] = $this->pagination->create_links();

            $data['add_up'] = get_category_name_only($id).'_up';
            $data['add_down'] = get_category_name_only($id).'_down';
            $data['cat_name'] = get_category_name_only($id);

            $this->template->set('title', $data['cat_name']);
            $this->template->set('desc', 'asd Colleges');
            $this->template->load('public/templates', 'public/category', $data);
        }else{
            show_404();
        }

        
    }

    public function news($id = ''){
        if(check_news($id)){
            $data['news'] = json_decode(get_ind_news($id));
            $cat_id = $data['news']->category_id;
            $data['add_up'] = get_category_name_only($cat_id).'_up';
            $data['add_down'] = get_category_name_only($cat_id).'_down';
            $data['similar_news'] = json_decode(get_similar_news($cat_id, $data['news']->news_id));
            increase_counter($id);
            // Meta tags
            $data['meta_tags'] = individual_news_meta_tags(
                    $data['news']->news_heading, 
                    word_limiter($data['news']->news_description, 10), 
                    base_url('uploads/news/thumb/'.$data['news']->news_image),
                    base_url('newsdetails/'.$data['news']->news_id)
            );

            $this->template->set('title', $data['news']->news_heading);
            $this->template->set('desc', word_limiter($data['news']->news_description, 10));
            $this->template->load('public/templates', 'public/indinews', $data);

        }else{
            show_404();
        }
    }

    function gallery(){
        $this->template->load('public/templates', 'public/images');
    }

    function gallery_details($id=''){
        $data['images'] = json_decode(get_ind_image_gallery_images_list($id));
        $data['gall_name'] = json_decode(get_gallery_details($id));

        $this->template->set('title', $data['gall_name']->gall_name);
        $this->template->set('desc', word_limiter($data['gall_name']->gall_desc, 10));
        $data['meta_tags'] = individual_news_meta_tags(
                    $data['gall_name']->gall_name, 
                    word_limiter($data['gall_name']->gall_desc, 10), 
                    base_url('uploads/gallery/thumb/'.$data['images'][0]->image_name), 
                    base_url('images/'.$id)
            );

        $this->template->load('public/templates', 'public/gall_images', $data);
    }

    function vgallery(){
        $this->template->load('public/templates', 'public/videos');
    }

    function vgallery_details($id=''){
        $data['images'] = json_decode(get_ind_video_gallery_videos_list($id));
        $data['gall_name'] = json_decode(get_vgallery_details($id));

        $this->template->set('title', $data['gall_name']->gall_name);
        $this->template->set('desc', word_limiter($data['gall_name']->gall_desc, 10));
        $data['meta_tags'] = individual_news_meta_tags(
                    $data['gall_name']->gall_name, 
                    word_limiter($data['gall_name']->gall_desc, 10), 
                    base_url('uploads/gallery/videos/'.$data['images'][0]->image),
                    base_url('videos/'.$id)
            );

        $this->template->load('public/templates', 'public/gall_videos', $data);
    }

    function pdf(){
        $this->template->load('public/templates', 'public/pdf');
    }

    function contactus(){
        $this->template->load('public/templates', 'public/contactus');
    }

    function add(){
        $this->template->load('public/templates', 'public/advertisement');
    }

    function aboutus(){
        $this->template->load('public/templates', 'public/aboutus');   
    }

    public function blog() {

        
            $config = array();
            $config["base_url"] = base_url('blogs');
            $config["total_rows"] = count(json_decode(get_testimonial()));
            $config["per_page"] = 200;
            $config["uri_segment"] = 3;

            //config for bootstrap pagination class integration
            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['first_link'] = false;
            $config['last_link'] = false;
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['prev_link'] = '&laquo';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';
            $config['next_link'] = '&raquo';
            $config['next_tag_open'] = '<li>';
            $config['next_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';

            $this->pagination->initialize($config);
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
            $data["results"] = json_decode(fetch_blog($config["per_page"], $page));
            $data['pagination'] = $this->pagination->create_links();

            $data['add_up'] = '';
            $data['add_down'] = '';
            $data['cat_name'] = '';

            $this->template->set('title', $data['cat_name']);
            $this->template->set('desc', 'asd Colleges');
            $this->template->load('public/templates', 'public/blogs', $data);        
    }

    public function blogdetail($id = ''){
        if(check_blog($id)){
            $data['news'] = json_decode(get_ind_testimonial($id));
            $cat_id = "";
            $data['add_up'] = "";
            $data['add_down'] = "";
            $data['similar_news'] = json_decode(get_top_headline());
            increase_counter($id);
            // Meta tags
            $data['meta_tags'] = individual_news_meta_tags(
                    $data['news']->detail, 
                    word_limiter($data['news']->text, 10), 
                    base_url('uploads/testimonial/thumb/'.$data['news']->pic),
                    base_url('blogdetails/'.$data['news']->id)
            );

            $this->template->set('title', $data['news']->detail);
            $this->template->set('desc', word_limiter($data['news']->text, 10));
            $this->template->load('public/templates', 'public/indiblog', $data);

        }else{
            show_404();
        }
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */