<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class User extends CI_Controller {
 
	function __construct(){
		parent::__construct();
		$this->load->model('users_model');
		// load form and url helpers
        $this->load->helper(array('form', 'url'));
        // load form_validation library
        $this->load->library('form_validation');
	}
 
	public function index(){
		//load session library
		$this->load->library('session');
		$data['users'] = $this->users_model->getAllUsers();
		$this->load->view('register_form', $data);		
	}
 
	public function register(){
		//load session library
		$this->load->library('session');
		/* Set validation rule for name field in the form */ 
        $this->form_validation->set_rules('email', 'Email', 'valid_email|required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[7]|max_length[30]');
        $this->form_validation->set_rules('fname', 'Full Name', 'required');
 
        if ($this->form_validation->run() == FALSE) { 
        	$data['users'] = $this->users_model->getAllUsers();
         	$this->load->view('register_form', $data);
        } 
        else { 
            $user['email'] = $_POST['email'];
            $user['password'] = $_POST['password'];
            $user['fname'] = $_POST['fname'];
 
            $query = $this->users_model->register($user);
 
            if($query){
            	header('location:'.base_url().$this->index());
				$this->session->set_flashdata('success','User registered successfully');
            }
            else{
            	header('location:'.base_url().$this->index());
				$this->session->set_flashdata('error','Failed to register user');
            }
        }
	}
 
}
?>