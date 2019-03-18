<?php
class Incident extends CI_Controller {

    /**
     * Loading all the required model, helper classes adn libraries in class constructor
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('incident_model');
        $this->load->helper('url_helper');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('pagination');
    }

    /**
     * Default method :
     * It get all the incidents rows from the database
     * Then load and pass the fetched records in the views 
     */

    public function view() {
        $total_rows = $this->incident_model->get_total_rows();;
        $offset = 0;
        $data['latest_incidents'] =  $this->incident_model->get_incidents($total_rows, $offset);
        $this->load->view('templates/header');
        $this->load->view('pages/new_incident', $data);
        $this->load->view('templates/footer');
    }

    /**
     * This method call on [View All Incidents] button click on the main page
     * It fetch the incidents records from the database, based on the given limit per page
     * and pass the fetched data to the corressponding view.
     * It also creates Codeigniter pagination.
     */
    public function show_incidents() {
        $limit_per_page = 3;
        $total_row = $this->incident_model->get_total_rows();
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;

        /** Pagination configurations */
        $config = array();
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

        /** Creating links using pagination library */
        $str_links = $this->pagination->create_links();
        $data['links'] = explode('&nbsp;',$str_links);

        $data['incidents'] = $this->incident_model->get_incidents($limit_per_page, $page * $limit_per_page);
        $this->load->view('templates/header');
        $this->load->view('pages/all_incidents', $data);
        $this->load->view('templates/footer');
    }

    /**
     * This method is called using an ajax request in (script.js) file on form submit.
     * It perform server side validation.
     * If: validation fails then error variable passed and the same (default) view will loads.
     * else: a call to model's method is performed to enter the incident in the database.
     */
    public function new_incident() {
        /**Server side form validation */
        $this->form_validation->set_rules('incident_type', 'Incident Type', 'required');
        $this->form_validation->set_rules('incident_date', 'Date', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');

        if($this->form_validation->run() === FALSE) {
            $data['error'] = "Form validation rules not passed. (In Incident(controller)/new_incident(method)";
            $this->load->view('templates/header');
            $this->load->view('pages/new_incident', $data);
            $this->load->view('templates/footer');
        } else {
            if($this->incident_model->insert_incident()){
                echo 1; // (script.js) will use this value to show successful message, append table row on client side and clear the form
            } else {
                echo 0; // If failed to insert then an "Data not inserted" alert will be pop-up
            }
         }
    }


    /**
     * This function is called using an ajax request when a user press a delete button(at the end of each row).
     * A call to model's method is made to delete a row in the database with the given ID.
     */
    public function delete_incident() {
        $id = $this->input->post('id');
        if($this->incident_model->delete_query($id)){
            echo 1; // (script.js) will use this value to change the background color property, fade out and remove the row from the data table on client side.
        } else {
            echo 0; // If failed to delete then an "Failed to delete this row" alert will be pop-up
        }
    }
}
