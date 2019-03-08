<?php
class Incident extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('incident_model');
        $this->load->helper('url_helper');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('pagination');
    }

    public function view() {
        $limit = 5;
        $offset = 0;
        $data['latest_incidents'] =  $this->incident_model->get_incidents($limit, $offset);
        $this->load->view('templates/header');
        $this->load->view('pages/new_incident', $data);
        $this->load->view('templates/footer');
    }



    public function show_incidents() {
        $config = array();
        $limit_per_page = 3;
        $total_row = $this->incident_model->get_total_rows();
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;
        $config["base_url"] = base_url() . "index.php/Incident/show_incidents";
        $config["total_rows"] = $total_row;
        $config["per_page"] = $limit_per_page;
        $config["uri_segment"] = 3;

        $config['num_links'] = 2;
        $config['use_page_numbers'] = TRUE;
        
        $config['attributes'] = array('class' => 'page-link', 'aria-current' => 'page');

        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';

        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';


        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Previous';
       
        $this->pagination->initialize($config);

        $str_links = $this->pagination->create_links();
        $data['links'] = explode('&nbsp;',$str_links);

        $data['incidents'] = $this->incident_model->get_incidents($limit_per_page, $page * $limit_per_page);
        $this->load->view('templates/header');
        $this->load->view('pages/all_incidents', $data);
        $this->load->view('templates/footer');
    }

    public function new_incident() {
        $this->form_validation->set_rules('incident_type', 'Incident Type', 'required');
        $this->form_validation->set_rules('incident_date', 'Date', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');

        if($this->form_validation->run() === FALSE) {
            $this->load->view('templates/header');
            $this->load->view('pages/new_incident');
            $this->load->view('templates/footer');
        } else {
            if($this->incident_model->insert_incident()){
                echo 1;
            } else {
                echo "<script>
                    alert('Failed to insert the Incident');
                    window.location = '".base_url() . "index.php/Incident/';
                </script>";
            }
         }
    }

    public function delete_incident() {
        $id = $this->input->post('id');
        if($this->incident_model->delete_query($id)){
            echo 1;
        } else {
            echo "<script>
                alert('Failed to Delete the Incident');
                window.location = '".base_url() . "index.php/Incident/';
            </script>";
        }
    }
}
