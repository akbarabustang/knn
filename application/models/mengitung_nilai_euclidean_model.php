<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class program_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function data() {
		$this->db->select('*');
		$this->db->from('tahu_kuning');
		$this->db->group_by('Nama','Mean_Hue','Mean_Saturation', 'Mean_Value', 'Kategori', 'tahu_kuning');
                $this->db->order_by('Nama');
              
		$query = $this->db->get();
		return $query->result();
	}