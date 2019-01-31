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

    public function test1()
    {


        $toHSV = $this->RGBtoHSV(174,150,51);

        echo "<pre>";
        print_r($toHSV);
        echo "</pre>";


    }


    //tasks to do
    //mean
    //knn




    function RGBtoHSV($rgb = array())
    {

       $HSV = array();

       // print_r($rgb);exit;

        $R = '';
        $G = '';
        $B = '';

        foreach($rgb as $key ){
            foreach ($key as $key2 => $value) {
                $R = ($value['R'] / 255);
                $G = ($value['G'] / 255);
                $B = ($value['B'] / 255);


                $maxRGB = max($R, $G, $B);
                $minRGB = min($R, $G, $B);
                $chroma = $maxRGB - $minRGB;


                $computedV = 100 * $maxRGB;

                if ($chroma == 0)
                    return array(0, 0, $computedV);


                $computedS = 100 * ($chroma / $maxRGB);


                if ($R == $minRGB)
                    $h = 3 - (($G - $B) / $chroma);
                elseif ($B == $minRGB)
                    $h = 1 - (($R - $G) / $chroma);
                else
                    $h = 5 - (($B - $R) / $chroma);

                $computedH_ =  60 * $h;;
                $computedH = $computedH_ * 255 / 360;

               $HSV[]['H'] = $computedH;
               $HSV[]['S'] = $computedS;
               $HSV[]['V'] = $computedV;

                   // $HSV[]['H'] = 1;
                   // $HSV[]['S'] = 1;
                   // $HSV[]['V'] = 1;


            }
        }

        echo "<pre>";
        print_r($HSV);
        echo "</pre>";
        exit;

        return $HSV;
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

        $toHSV = $this->rgbTohsv1($colors);


        $name = 'DETEKSI-'.uniqid(4);
        $insert = $this->db->query("INSERT INTO data_deteksi (name, image, rgb, hsv) VALUES ('".$name."', '".$source."' ,'".serialize($colors)."' , '".serialize($toHSV)."') ");

        // echo "<pre>";
        // print_r($colors);
        // echo "</pre>";

        echo json_encode(array('data'=>'success'));

    }



    public function imageResize()
    {
        //your magic here meong

        // echo json_encode(array('image'=>$_FILES['file-0']));exit;

        $config['upload_path'] = './public/uploads/img/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //Enkripsi nama yang terupload

        $this->upload->initialize($config);
        if(!empty($_FILES['file-0']['name'])){

            if ($this->upload->do_upload('file-0')){
                $gbr = $this->upload->data();
                // echo  json_encode(array('image'=>$gbr));exit;

                //resize image
                $config['image_library']='gd2';
                $config['source_image']='./public/uploads/img/'.$gbr['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= TRUE;
                // $config['quality']= '50%';
                $config['width']= 50;
                $config['height']= 50;
                $config['new_image']= './public/uploads/img/resized/'.$gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar=$gbr['file_name'];
                $getHSV = $this->getImageRGB($gambar);


                //crop image
                $im = ImageCreateFromJpeg('./public/uploads/img/resized/'.$gambar);
                $size = min(imagesx($im), imagesy($im));
                $im2 = imagecrop($im, ['x' => 15, 'y' => 15, 'width' => 20, 'height' => 20]);
                if ($im2 !== FALSE) {
                    imagejpeg($im2, './public/uploads/img/cropped/'.$gambar);
                    imagedestroy($im2);
                }

                imagedestroy($im);

            }

        }
    }



    //gak dipake
    public function getImageConvertion()
    {
        $data = $this->db->query(" SELECT * FROM data_deteksi ORDER BY id DESC LIMIT 0,1 ")->result();
        echo json_encode(array('data'=>$data));
    }



    public function rgbTohsv1($rgb = array())
    {

       $HSL = array();
        // echo json_encode(array('data'=>$rgb));exit;


       $var_R = '';
       $var_G = '';
       $var_B = '';

       foreach ($rgb as $key ) {
            foreach ($key as $key2 => $value) {
                 // print_r($value);exit;
            // print_r($rgb);exit;

            $var_R = $value['R'];
            $var_G = $value['G'];
            $var_B = $value['B'];



            $var_Min = min($var_R, $var_G, $var_B);
           $var_Max = max($var_R, $var_G, $var_B);
           $del_Max = $var_Max - $var_Min;
           $V = $var_Max;

           if ($del_Max == 0)
           {
              $H = 0;
              $S = 0;
           }
           else
           {
              $S = $del_Max / $var_Max;
              $del_R = ( ( ( $var_Max - $var_R ) / 6 ) + ( $del_Max / 2 ) ) / $del_Max;
              $del_G = ( ( ( $var_Max - $var_G ) / 6 ) + ( $del_Max / 2 ) ) / $del_Max;
              $del_B = ( ( ( $var_Max - $var_B ) / 6 ) + ( $del_Max / 2 ) ) / $del_Max;
              if      ($var_R == $var_Max) $H = $del_B - $del_G;
              else if ($var_G == $var_Max) $H = ( 1 / 3 ) + $del_R - $del_B;
              else if ($var_B == $var_Max) $H = ( 2 / 3 ) + $del_G - $del_R;
              if ($H<0) $H++;
              if ($H>1) $H--;

           }

           $HSL[]['H'] = $H;
           $HSL[]['S'] = $S;
           $HSL[]['V'] = $V;
        }


       }


       return $HSL;
    }
}
