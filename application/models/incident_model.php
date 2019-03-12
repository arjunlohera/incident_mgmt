<?php
class Incident_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert_incident() {
        $data = array(
            'type' => $this->input->post('incident_type'),
            'date' => date("Y-m-d", strtotime($this->input->post('incident_date'))),
            'description' => $this->input->post('description')
        );
         $this->db->insert('incident_details', $data);
        
    return ($this->db->affected_rows() > 0) ? true : false; 
    }

    public function get_incidents($limit, $start) {
        $this->db->limit($limit, $start);
        $this->db->order_by('ID', 'DESC');
        $query = $this->db->get('incident_details');
        if($query->num_rows() > 0) {
            foreach($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false; 
    }

    public function get_total_rows() {
        return $this->db->count_all('incident_details');
    }

    public function delete_query($id) {
        $this->db->delete('incident_details', array('id' => $id)); 
        return ($this->db->affected_rows() > 0) ? true : false; 
    }

    
}
?>
