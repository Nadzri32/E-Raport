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
    unset($_SESSION['c_admin']);
    header('location:../../');
  }
//kelas
  else if($akh==md5('addkelas')){ $c_kelas=random(9);
    $smk->addkelas($con,$c_kelas,$_POST['kelas']);
  }
  else if($akh==md5('editkelas')){
    $smk->editkelas($con,$_POST['c_kelas'],$_POST['kelas']);
  }
  else if($akh==md5('hapuskelas')){
    $smk->hapuskelas($con,$_GET['q']);
  }
//siswa
  else if($akh==md5('addsiswa')){ $c_siswa=random(9); $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->addsiswa($con,$c_siswa,$_POST['c_kelas'],$_POST['nisn'],$_POST['nama'],$_POST['jk'],$_POST['alamat'],$tl);
  }
  else if($akh==md5('editsiswa')){ $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->editsiswa($con,$_POST['c_siswa'],$_POST['nisn'],$_POST['nama'],$_POST['jk'],$_POST['alamat'],$tl);
  }
//guru
  else if($akh==md5('addguru')){ $c_guru=random(9); $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->addguru($con,$c_guru,$_POST['nip'],$_POST['nama'],$_POST['alamat'],$tl,$_POST['username'],$_POST['password']);
  }
  else if($akh==md5('editguru')){ $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->editguru($con,$_POST['c_guru'],$_POST['nip'],$_POST['nama'],$_POST['alamat'],$tl,$_POST['username'],$_POST['password']);
  }
  else if($akh==md5('hapusguru')){
    $dd=mysqli_fetch_array(mysqli_query($con,"SELECT * from guru where c_guru='$_GET[q]' "));
    if($dd['foto']!=NULL){
        unlink('../../guru/'.$dd['foto'].'');
    }
    $smk->hapusguru($con,$_GET['q']);
  }
//wali murid
  else if($akh==md5('editwalimurid')){
    $cor=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walimurid where c_siswa='$_POST[c_siswa]' "));
    if($cor==NULL){ $c_walimurid=random(9);
      $smk->inputwalimurid($con,$c_walimurid,$_POST['c_siswa'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
    else{
      $smk->editwalimurid($con,$_POST['c_walimurid'],$_POST['c_siswa'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
  }
//mapel
  else if($akh==md5('addmapel')){ $c_mapel=random(9);
    $smk->addmapel($con,$c_mapel,$_POST['mapel'],$_POST['sl']);
  }
  else if($akh==md5('editmapel')){
    $smk->editmapel($con,$_POST['c_mapel'],$_POST['mapel'],$_POST['sl']);
  }
//guru mapel
  else if($akh==md5('addgurumapel')){ $c_gurumapel=random(9);
    $cekdulu=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM gurumapel where c_kelas='$_POST[c_kelas]' and c_mapel='$_POST[c_mapel]' "));
    if($cekdulu==NULL){
       $smk->addgurumapel($con,$c_gurumapel,$_POST['c_guru'],$_POST['c_kelas'],$_POST['c_mapel']);
    }
    else{
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:../../addgurumapel');
    }
  }
  else if($akh==md5('editgurumapel')){
    $cekdulu=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM gurumapel where c_kelas='$_POST[c_kelas]' and c_mapel='$_POST[c_mapel]' "));
    if($cekdulu==NULL){
       $smk->editgurumapel($con,$_POST['c_gurumapel'],$_POST['c_guru'],$_POST['c_kelas'],$_POST['c_mapel']);
    }
    else{
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:../../editgurumapel/'.$_POST['c_gurumapel'].'');
    }
  }
//wali kelas
  else if($akh==md5('addwalikelas')){ $c_walikelas=random(9);
    $cekdulu=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walikelas where c_kelas='$_POST[c_kelas]' OR c_guru='$_POST[c_guru]' "));
    if($cekdulu==NULL){
       $smk->addwalikelas($con,$c_walikelas,$_POST['c_guru'],$_POST['c_kelas'],$_POST['username'],$_POST['password']);
    }
    else{
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:../../addwalikelas');
    }
  }
  else if($akh==md5('editwalikelas')){
    /*$cekdulu=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walikelas where c_kelas='$_POST[c_kelas]' and c_guru='$_POST[c_guru]' "));
    if($cekdulu==NULL){
       $smk->editwalikelas($con,$_POST['c_walikelas'],$_POST['c_guru'],$_POST['c_kelas'],$_POST['username'],$_POST['password']);
    }
    else{
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:../../editwalikelas/'.$_POST['c_walikelas'].'');
    }*/
    $smk->editwalikelas($con,$_POST['c_walikelas'],$_POST['c_guru'],$_POST['c_kelas'],$_POST['username'],$_POST['password']);
  }
//tahun akademik
  else if($akh==md5('addta')){ $c_ta=random(9);
    $smk->addta($con,$c_ta,$_POST['tahun'],$_POST['semester']);
  }
  else if($akh==md5('editta')){
    $smk->editta($con,$_POST['c_ta'],$_POST['tahun'],$_POST['semester']);
  }
  else if($akh==md5('aktifkan')){
    $smk->aktifkan($con,$_GET['q']);
  }
//tipe nilai
  else if($akh==md5('addtipenilai')){ $c_tipenilai=random(9);
    $smk->addtipenilai($con,$c_tipenilai,$_POST['tipe'],$_POST['ket'],$_POST['bobot'],$_POST['p']);
  }
  else if($akh==md5('edittipenilai')){
    $smk->edittipenilai($con,$_POST['c_tipenilai'],$_POST['tipe'],$_POST['ket'],$_POST['bobot'],$_POST['p']);
  }
//aplikasi 
  else if($akh==md5('aplikasi')){
    $smk->aplikasi($con,$_POST['alamat'],$_POST['kepsek'],$_POST['nipkepsek'],$_POST['namasek']);
  }
//backup  
  else if($akh==md5('backupdb')){
    $file='backup_db_eraport-'.date('d-m-Y').'-'.date('H-i-s').'-.sql';
    $smk->backup($con,$file);
    backup_tables($dbhost,$dbuser,$dbpass,$dbname,$file);
    session_start();
    $_SESSION['pesan']='backup';
    header('location:../../backup');
  }
//extra
  else if($akh==md5('addextra')){ $c_extra=random(9);
    $smk->addextra($con,$c_extra,$_POST['extra']);
  }
  else if($akh==md5('editextra')){ $c_extra=random(9);
    $smk->editextra($con,$_POST['c_extra'],$_POST['extra']);
  }
//setting guru mapel
  else if($akh==md5('settinggurumapel')){
    mysqli_query($con,"DELETE FROM gurumapel where c_guru='$_POST[c_guru]' ");
    $m= $_POST['mapel'];$t= count($m);
    for($a=0;$a<$t;$a++){
      $c_gurumapel=random(9); $cm=substr($m[$a], 0,9); $ck=substr($m[$a], 10,9);
      $smk->settinggurumapel($con,$c_gurumapel,$_POST['c_guru'],$cm,$ck);
    }
    session_start();
    $_SESSION['pesan']='berhasil';
    header('location:../../settinggurumapel/'.$_POST['c_guru'].'');
  }
//semua hapus jadi satu
  else if($akh==md5('hapuswalimurid')){
    $smk->hapuswalimurid($con,$_GET['q']);
  }
  else if($akh==md5('hapuswalikelas')){
    $smk->hapuswalikelas($con,$_GET['q']);
  }
  else if($akh==md5('hapusguru')){
    $smk->hapusguru($con,$_GET['q']);
  }
  else if($akh==md5('hapusgurumapel')){
    $smk->hapusgurumapel($con,$_GET['q']);
  }
  else if($akh==md5('hapussiswa')){
    $ck=mysqli_fetch_array(mysqli_query($con,"SELECT * from siswa where c_siswa='$_GET[q]' "));
    $smk->hapussiswa($con,$_GET['q'],$ck['c_kelas']);
  }
  else if($akh==md5('hapussiswa2')){
    $smk->hapussiswa2($con,$_GET['q']);
  }
  else if($akh==md5('hapuskelas')){
    $smk->hapuskelas($con,$_GET['q']);
  }
  else if($akh==md5('hapusmapel')){
    $smk->hapusmapel($con,$_GET['q']);
  }
  else if($akh==md5('hapustipenilai')){
    $smk->hapustipenilai($con,$_GET['q']);
  }
  else if($akh==md5('hapusta')){
    $smk->hapusta($con,$_GET['q']);
  }
  else if($akh==md5('hapusextra')){
    $smk->hapusextra($con,$_GET['q']);
  }
  else if($akh==md5('hapusbackup')){
    $ck=mysqli_fetch_array(mysqli_query($con,"SELECT * from backup where c_backup='$_GET[q]' ")); unlink('../backupdb/'.$ck['file'].'');
    $smk->hapusbackup($con,$_GET['q']);
  }
  else{
    session_destroy();
    session_unset($_SESSION['c_admin']);
    header('location:../../login');
    //echo "string";
  }
}

function backup_tables($host,$user,$pass,$name,$nama_file,$tables = '*')
{
  //untuk koneksi database
  $link = mysqli_connect($host,$user,$pass,$name);

  if($tables == '*')
  {
    $tables = array();
    $result = mysqli_query($GLOBALS["___mysqli_ston"], 'SHOW TABLES');
    while($row = mysqli_fetch_row($result))
    {
      $tables[] = $row[0];
    }
  }else{
    //jika hanya table-table tertentu
    $tables = is_array($tables) ? $tables : explode(',',$tables);
  }
  
  //looping dulu ah
  foreach($tables as $table)
  {
    $result = mysqli_query($GLOBALS["___mysqli_ston"], 'SELECT * FROM '.$table);
    $hitung= mysqli_num_rows($result);
    $num_fields = (($___mysqli_tmp = mysqli_num_fields($result)) ? $___mysqli_tmp : false);
    
    //menyisipkan query drop table untuk nanti hapus table yang lama
    @$return.= 'DROP TABLE '.$table.';';
    $row2 = mysqli_fetch_row(mysqli_query($GLOBALS["___mysqli_ston"], 'SHOW CREATE TABLE '.$table));
    $return.= "\n\n".$row2[1].";\n\n";
    $return.= "INSERT INTO ".$table." VALUES\n";
    
      
    for ($i = 1; $i <= $hitung; $i++) 
    {
      
      
      $row = mysqli_fetch_row($result);
      $return.='(';
        //menyisipkan query Insert. untuk nanti memasukan data yang lama ketable yang baru dibuat. so toy mode : ON
        for($j=0; $j<$num_fields; $j++) 
        {
          //akan menelusuri setiap baris query didalam
          $row[$j] = addslashes($row[$j]);
          $row[$j] = ereg_replace("\n","\\n",$row[$j]);
          if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
          if ($j<($num_fields-1)) { $return.= ','; }
        }
        if($i==$hitung)
        {
          $return.=');';
        }
        else
        {
          $return.="),\n";
        }
      
      }
      
    
    
    $return.="\n\n\n";
  }
  
  //simpan file di folder yang anda tentukan sendiri. kalo saya sech folder "DATA"
  $nama_file;
  
  $handle = fopen('../backupdb/'.$nama_file,'w+');
  fwrite($handle,$return);
  fclose($handle);
}
?>
