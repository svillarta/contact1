<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
		parent::__construct();
			if (!$this->ion_auth->logged_in()){
				redirect('login','refresh');
			}else{
				if(!$this->ion_auth->is_admin()){
					echo "You must be an administrator to view this page.";
				}
			}
	}
	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function dashboard(){
		$this->load->view('template/header');
		$this->load->view('admin/dashboard');
		$this->load->view('template/footer');
	}
	public function emails(){
		$this->load->view('template/header');
		$this->load->view('admin/emails');
		$this->load->view('template/footer');
	}
	public function map(){
		$this->load->view('template/header');
		$this->load->view('admin/map');
		$this->load->view('template/footer');
	}
	public function notify(){
		$this->load->view('template/header');
		$this->load->view('admin/notify');
		$this->load->view('template/footer');
	}
	public function send_notif(){
		$message = $this->input->post("message");
		$sender = 'Golog';
		$this->pusher->notifyUser($message,$sender);
		$this->session->set_flashdata("message","Message Sent!");
		redirect('notify','refresh');
	}
	public function send_email(){
		$post = $this->input->post();
		if(!empty($post)){
			$send = $this->send_mail->send($post["email"],$post["subject"],$post["message"]);
			echo "<pre>";
			print_r($send);die();
		}
	}

}
