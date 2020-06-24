<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacts extends CI_Controller {
  public function __construct(){
    parent::__construct();
    if (!$this->ion_auth->logged_in()){
      redirect('auth/login');
    }
  }

  public function dashboard(){
    $this->data['pagetitle']= 'dashboard';
    $this->load->view('template/header');
    $this->load->view('contacts/dashboard',$this->data);
    $this->load->view('template/footer');
  }
  public function getContacts(){
          $post = $this->input->post();
          $draw = $this->input->post('draw');
          $length = $this->input->post('length');
          $offset = $this->input->post('start');
          $search = $this->input->post('search');
          $order = $this->input->post('order');
          $columns = $this->input->post('columns');
        if(!empty($order)){
            $setorder =  array($columns[$order[0]['column']]['data'] => $order[0]['dir']);
          }else{
            $setorder = array();
          }
          if(empty($search['value'])){
            $like = array();
          }else{
            $like = array(
              'email' => $search['value'],
              'phone' => $search['value'],
              'company' => $search['value']
            );
          }

          $result = $this->universal->datatables(
          'contacts',
          '*',
          array(
            "userId" => $this->ion_auth->user()->row()->id
          ),
          array(),
          array($length => $offset),
          $setorder,
          $like,
          true
          );
          echo json_encode(
            array(
              'draw' => intval($draw),
              "recordsTotal" => $result['recordsTotal'],
              "recordsFiltered" => $result['recordsFiltered'],
              "data" => $result['data']
            )
          );
  }


  public function addContacts(){
    $post = $this->input->post();
    $data =  array(
      "userId" => $this->ion_auth->user()->row()->id,
      "name" => $post['name'],
      "email" => $post['email'],
      "phone" => $post['phone'],
      "company" => $post['company']
    );

    $result = $this->universal->insert("contacts",$data);
    if ($result) {
      echo json_encode(array(
        "status" => true,
        "message" => "Successfully Added"
      ));
    }else{
      echo json_encode(array(
        "status" => false,
        "message" => "Failed"
      ));
    }
  }

  public function getDetails(){

    $result = $this->universal->get(
      false,
      'contacts',
      '*',
      'row',
      array(
          'id' => $this->input->post('id')
      )
    );
    echo json_encode($result);
  }


  public function update(){
    $post = $this->input->post();
    $data =  array(
      "name" => $post['name'],
      "email" => $post['email'],
      "phone" => $post['phone'],
      "company" => $post['company']
    );
    $result = $this->universal->update(
      "contacts",
      $data,
      array(
        "id" => $post['contactId']
      )
    );

    if ($result) {
      echo json_encode(array(
        "status" => true,
        "message" => "Successfully Updated"
      ));
    }else{
      echo json_encode(array(
        "status" => false,
        "message" => "Failed"
      ));
    }
  }


  public function delete(){
    $post = $this->input->post();
    $result = $this->universal->delete(
      "contacts",
      array(
        "id" => $post['id']
      )
    );

    if ($result) {
      echo json_encode(array(
        "status" => true,
        "message" => "Your file has been deleted."
      ));
    }else{
      echo json_encode(array(
        "status" => false,
        "message" => "Failed"
      ));
    }
  }
}
