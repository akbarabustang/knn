<?php
class Program extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Program_model');
	}

	// Halaman utama
	public function index()	{
		$data = array(	
			'title'=> 'Data Latih',
			'datalatih'	=> $this->Program_model->data(),
			'isi'=> 'views/4_menghitung_nilai_euclidean');
			
		$this->load->view('4_menghitung_nilai_euclidean', $data);
	}
}