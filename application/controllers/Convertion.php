<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Convertion extends CI_Controller {
   
    function __construct(){
        parent::__construct();
        $this->load->library('upload');
    } 

    public function home()
    {
        $this->load->view('front/home');
    }

	public function getImageRGB($source)
	{

        //your magic here meong

        $image = ImageCreateFromJpeg('./public/uploads/img/'.$source);

        $width = imagesx($image);
        $height = imagesy($image);
        $colors = array();

        for ($y = 0; $y < $height; $y++) {
            $y_array = array() ;

            for ($x = 0; $x < $width; $x++) {
                $rgb = imagecolorat($image, $x, $y);
                $r = ($rgb >> 16) & 0xFF;
                $g = ($rgb >> 8) & 0xFF;
                $b = $rgb & 0xFF;

                $x_array = array('R'=>$r, 'G'=>$g, 'B'=>$b) ;
                $y_array[] = $x_array ; 
            } 

            $colors[] = $y_array ;
        }
        echo "<pre>";
        print_r($colors);
        echo "</pre>";

    }
    
    public function imageResize()
    {
        //your magic here meong

        $config['upload_path'] = './public/uploads/img/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //Enkripsi nama yang terupload
 
        $this->upload->initialize($config);
        if(!empty($_FILES['image_file']['name'])){
 
            if ($this->upload->do_upload('image_file')){
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='./public/uploads/img/'.$gbr['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= TRUE;
                // $config['quality']= '50%';
                $config['width']= 50;
                $config['height']= 50;
                $config['new_image']= './assets/images/'.$gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();
 
                $gambar=$gbr['file_name'];
                $getHSV = $this->getImageRGB($gambar);

                echo "Image berhasil diupload";
            }
                      
        }
    }
}
