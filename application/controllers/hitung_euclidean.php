<?php
class Program extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('menghitung_nilai_euclidean_model');
	}

	// Halaman utama
	public function index()	{
	$data = array(	'title'		=> 'Data Latih',
					'datalatih'	=> $this->menghitung_nilai_euclidean_model->data(),
					'isi'		=> 'views/4_menghitung_nilai_euclidean');
		$this->load->view('views/4_menghitung_nilai_euclidean', $data, FALSE);
	}