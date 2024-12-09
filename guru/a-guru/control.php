<?php date_default_timezone_set('Asia/Jakarta'); session_start();
function random($length){
  $data='1234567890AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSstuuUvVwWxXyYyZz';
  $string='';
  for($i=1;$i<=$length;$i++){
    $pos=rand(0,strlen($data)-1);
    $string.=$data[$pos];
  }
  return $string;
}
require '../../php/config.php';
if(empty($_GET['smkakh']) or empty($_GET['q'])){
	header('location:../../login');
}
else{
	require 'action.php';
	$smk=new action();
	$akh=($_GET['smkakh']);
  if($akh==md5('logout')){ 
    session_destroy();
    unset($_SESSION['c_guru']);
    header('location:../../');
  }
//input nilai
  else if($akh==md5('inputnilai')){
    /*ambil tahun akademik yang aktif*/ $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where status='aktif' ")); $c_ta=$ata['c_ta'];
    /*echo 'tahun akademik: '.$c_ta.'<br>';
    echo 'c_tipenilai: '.$_POST['c_tipenilai'].'<br>';
    echo 'c_kelas: '.$_POST['c_kelas'].'<br>';
    echo 'c_mapel: '.$_POST['c_mapel'].'<br>';*/
    $at=date('Y-m-d');$nilai = $_POST['nilsiswa'];
    $lsis=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$_POST[c_kelas]' order by nama asc "); $no=0; while($hlsis=mysqli_fetch_array($lsis)){
      //disini inputnya
          $cekada=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM nilai where c_ta='$c_ta' and c_tipenilai='$_POST[c_tipenilai]' and c_siswa='$hlsis[c_siswa]' and c_mapel='$_POST[c_mapel]' and c_kelas='$_POST[c_kelas]' "));
          if($cekada==NULL){
            $input=mysqli_query($con,"INSERT INTO nilai set c_ta='$c_ta',c_tipenilai='$_POST[c_tipenilai]',c_siswa='$hlsis[c_siswa]',c_mapel='$_POST[c_mapel]',c_kelas='$_POST[c_kelas]',nilai='$nilai[$no]',at='$at' ");
          }else{
             $edit=mysqli_query($con,"UPDATE nilai set c_ta='$c_ta',c_tipenilai='$_POST[c_tipenilai]',c_siswa='$hlsis[c_siswa]',c_mapel='$_POST[c_mapel]',c_kelas='$_POST[c_kelas]',nilai='$nilai[$no]',at='$at' WHERE c_nilai='$cekada[c_nilai]' ");
          }
        $no++;
    }
    session_start();
    $_SESSION['pesan']='selesai';
    header('location:../../inputnilai/'.$_POST['c_kelas'].'/'.$_POST['c_mapel'].'/'.$_POST['c_tipenilai'].'');
  }
  else if($akh==md5('setelulang')){
    $c_kelas=$_GET['q']; $c_mapel=$_GET['r']; $c_tipenilai=$_GET['v'];
    $setel=mysqli_query($con,"DELETE from nilai where c_ta='$c_ta' and c_tipenilai='$c_tipenilai' and c_kelas='$c_kelas' and c_mapel='$c_mapel' ");
    session_start();
    $_SESSION['pesan']='ulang';
    header('location:'.$basegu.'inputnilai/'.$c_kelas.'/'.$c_mapel.'/'.$c_tipenilai.'');
  }
  else{
    session_destroy();
    session_unset($_SESSION['c_guru']);
    header('location:../../login');
    //echo "string";
  }
}
?>
