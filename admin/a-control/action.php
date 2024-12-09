<?php date_default_timezone_set('Asia/Jakarta');
class action{
//kelas
  function addkelas($con,$c_kelas,$kelas){
    $akh=mysqli_query($con,"INSERT INTO kelas set c_kelas='$c_kelas',kelas='$kelas' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../kelas');
  }
  function editkelas($con,$c_kelas,$kelas){
    $akh=mysqli_query($con,"UPDATE kelas set kelas='$kelas' where c_kelas='$c_kelas' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../kelas');
  }
//siswa
  function addsiswa($con,$c_siswa,$c_kelas,$nisn,$nama,$jk,$alamat,$tl){
    $akh=mysqli_query($con,"INSERT INTO siswa set c_siswa='$c_siswa',c_kelas='$c_kelas',nisn='$nisn',nama='$nama',jk='$jk',temlahir='$alamat',tanglahir='$tl' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addsiswa/'.$c_kelas.'');
  }
  function editsiswa($con,$c_siswa,$nisn,$nama,$jk,$alamat,$tl){
    $akh=mysqli_query($con,"UPDATE siswa set nisn='$nisn',nama='$nama',jk='$jk',temlahir='$alamat',tanglahir='$tl' where c_siswa='$c_siswa' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editsiswa/'.$c_siswa.'');
  }
//guru
  function addguru($con,$c_guru,$nip,$nama,$alamat,$tl,$username,$password){
    $akh=mysqli_query($con,"INSERT INTO guru set c_guru='$c_guru',nip='$nip',nama='$nama',temlahir='$alamat',tanglahir='$tl',username='$username',password='$password' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addguru');
  }
  function editguru($con,$c_guru,$nip,$nama,$alamat,$tl,$username,$password){
    $akh=mysqli_query($con,"UPDATE guru set nip='$nip',nama='$nama',temlahir='$alamat',tanglahir='$tl',username='$username',password='$password' where c_guru='$c_guru' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editguru/'.$c_guru.'');
  }
//wali murid
  function inputwalimurid($con,$c_walimurid,$c_siswa,$nama,$username,$password){
    $akh=mysqli_query($con,"INSERT INTO walimurid set c_walimurid='$c_walimurid',c_siswa='$c_siswa',nama='$nama',username='$username',password='$password' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editwalimurid/'.$c_siswa.'');
  }
  function editwalimurid($con,$c_orangtua,$c_siswa,$nama,$username,$password){
    $akh=mysqli_query($con,"UPDATE walimurid set c_siswa='$c_siswa',nama='$nama',username='$username',password='$password' where c_walimurid='$c_walimurid' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editwalimurid/'.$c_siswa.'');
  }
//mapel
  function addmapel($con,$c_mapel,$mapel,$sl){
    $akh=mysqli_query($con,"INSERT INTO mapel set c_mapel='$c_mapel',mapel='$mapel',sl='$sl' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../mapel');
  }
  function editmapel($con,$c_mapel,$mapel,$sl){
    $akh=mysqli_query($con,"UPDATE mapel set mapel='$mapel',sl='$sl' where c_mapel='$c_mapel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../mapel');
  }
//guru mapel
   function addgurumapel($con,$c_gurumapel,$c_guru,$c_kelas,$c_mapel){
    $akh=mysqli_query($con,"INSERT INTO gurumapel set c_gurumapel='$c_gurumapel',c_guru='$c_guru',c_kelas='$c_kelas',c_mapel='$c_mapel' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addgurumapel');
  }
  function editgurumapel($con,$c_gurumapel,$c_guru,$c_kelas,$c_mapel){
    $akh=mysqli_query($con,"UPDATE gurumapel set c_guru='$c_guru',c_kelas='$c_kelas',c_mapel='$c_mapel' where c_gurumapel='$c_gurumapel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../addgurumapel/'.$c_gurumapel.'');
  }
//wali kelas
   function addwalikelas($con,$c_walikelas,$c_guru,$c_kelas,$username,$password){
    $akh=mysqli_query($con,"INSERT INTO walikelas set c_walikelas='$c_walikelas',c_guru='$c_guru',c_kelas='$c_kelas',username='$username',password='$password' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addwalikelas');
  }
  function editwalikelas($con,$c_walikelas,$c_guru,$c_kelas,$username,$password){
    $akh=mysqli_query($con,"UPDATE walikelas set c_guru='$c_guru',c_kelas='$c_kelas',username='$username',password='$password' where c_walikelas='$c_walikelas' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editwalikelas/'.$c_walikelas.'');
  }
//tahun akademik
  function addta($con,$c_ta,$tahun,$semester){
    $akh=mysqli_query($con,"INSERT INTO tahunakademik set c_ta='$c_ta',tahun='$tahun',semester='$semester' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../tahunakademik');
  }
  function editta($con,$c_ta,$tahun,$semester){
    $akh=mysqli_query($con,"UPDATE tahunakademik set tahun='$tahun',semester='$semester' where c_ta='$c_ta' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../tahunakademik');
  }
  function aktifkan($con,$c_ta){
    $akh=mysqli_query($con,"UPDATE tahunakademik set status='' ");
    $akh2=mysqli_query($con,"UPDATE tahunakademik set status='aktif' where c_ta='$c_ta' ");
    session_start();
    $_SESSION['pesan']='aktif';
    header('location:../../tahunakademik');
  }
//tipe nilai
  function addtipenilai($con,$c_tipenilai,$tipe,$ket,$bobot,$p){
    $akh=mysqli_query($con,"INSERT INTO tipenilai set c_tipenilai='$c_tipenilai',tipe='$tipe',ket='$ket',bobot='$bobot',p='$p' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../jenisnilai');
  }
  function edittipenilai($con,$c_tipenilai,$tipe,$ket,$bobot,$p){
    $akh=mysqli_query($con,"UPDATE tipenilai set tipe='$tipe',ket='$ket',bobot='$bobot',p='$p' where c_tipenilai='$c_tipenilai' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../jenisnilai');
  }
//aplikasi
  function aplikasi($con,$alamat,$kepsek,$nipkepsek,$namasek){
    $akh=mysqli_query($con,"UPDATE aplikasi set alamat='$alamat',kepsek='$kepsek',nipkepsek='$nipkepsek',namasek='$namasek' where id='1' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../setting');
  }
//backup
  function backup($con,$file){ $at=date('Y-m-d H:i:s');
    $akh=mysqli_query($con,"INSERT INTO backup set at='$at',file='$file' ");
    session_start();
    $_SESSION['pesan']='backup';
    header('location:../../backup');
  }
//extra
  function addextra($con,$c_extra,$extra){
    $akh=mysqli_query($con,"INSERT INTO extra set c_extra='$c_extra',extra='$extra' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../extra');
  }
  function editextra($con,$c_extra,$extra){
    $akh=mysqli_query($con,"UPDATE extra set extra='$extra' where c_extra='$c_extra' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../extra');
  }
//setting guru mapel
  function settinggurumapel($con,$c_gurumapel,$c_guru,$c_mapel,$c_kelas){
    $akh=mysqli_query($con,"INSERT INTO gurumapel set c_gurumapel='$c_gurumapel',c_guru='$c_guru',c_mapel='$c_mapel',c_kelas='$c_kelas' ");
  }
//fitur hapus disini
  function hapuswalimurid($con,$c_walimurid){
    $akh=mysqli_query($con,"DELETE FROM walimurid where c_walimurid='$c_walimurid' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../walimurid');
  }
  function hapuswalikelas($con,$c_walikelas){
    $akh=mysqli_query($con,"DELETE FROM walikelas where c_walikelas='$c_walikelas' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../walikelas');
  }
  function hapusguru($con,$c_guru){
    $akh=mysqli_query($con,"DELETE FROM gurumapel where c_guru='$c_guru' "); $akh2=mysqli_query($con,"DELETE FROM walikelas where c_guru='$c_guru' "); $akh3=mysqli_query($con,"DELETE FROM guru where c_guru='$c_guru' ");    
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../guru');
  }
  function hapusgurumapel($con,$c_gurumapel){
    $akh=mysqli_query($con,"DELETE FROM gurumapel where c_gurumapel='$c_gurumapel' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../gurumapel');
  }
  function hapussiswa($con,$c_siswa,$c_kelas){
    $akh=mysqli_query($con,"DELETE from walimurid where c_siswa='$c_siswa' ");
    $akh2=mysqli_query($con,"DELETE from jumlahnilra where c_siswa='$c_siswa' ");
    $akh3=mysqli_query($con,"DELETE from rapotsiswa where c_siswa='$c_siswa' ");
    $akh4=mysqli_query($con,"DELETE from nilai where c_siswa='$c_siswa' ");
    $akh4=mysqli_query($con,"DELETE from extrasiswa where c_siswa='$c_siswa' ");
    $akh6=mysqli_query($con,"DELETE from siswa where c_siswa='$c_siswa' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../siswa/'.$c_kelas.'');
  }
  function hapussiswa2($con,$c_siswa){
    $akh=mysqli_query($con,"DELETE from walimurid where c_siswa='$c_siswa' ");
    $akh2=mysqli_query($con,"DELETE from jumlahnilra where c_siswa='$c_siswa' ");
    $akh3=mysqli_query($con,"DELETE from rapotsiswa where c_siswa='$c_siswa' ");
    $akh4=mysqli_query($con,"DELETE from nilai where c_siswa='$c_siswa' ");
    $akh4=mysqli_query($con,"DELETE from extrasiswa where c_siswa='$c_siswa' ");
    $akh6=mysqli_query($con,"DELETE from siswa where c_siswa='$c_siswa' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../siswa');
  }
  function hapuskelas($con,$c_kelas){
    //hapus wali murid
    $walm=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$c_kelas' ");while($hwalm=mysqli_fetch_array($walm)){
        mysqli_query($con,"DELETE from walimurid where c_siswa='$hwalm[c_siswa]' ");
        mysqli_query($con,"DELETE from extrasiswa where c_siswa='$hwalm[c_siswa]' ");
    }
    $akh=mysqli_query($con,"DELETE from gurumapel where c_kelas='$c_kelas' ");
    $akh2=mysqli_query($con,"DELETE from jumlahnilra where c_kelas='$c_kelas' ");
    $akh3=mysqli_query($con,"DELETE from rapotsiswa where c_kelas='$c_kelas' ");
    $akh4=mysqli_query($con,"DELETE from nilai where c_kelas='$c_kelas' ");    
    $akh5=mysqli_query($con,"DELETE from siswa where c_kelas='$c_kelas' ");
    $akh6=mysqli_query($con,"DELETE from walikelas where c_kelas='$c_kelas' ");
    $akh7=mysqli_query($con,"DELETE from kelas where c_kelas='$c_kelas' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../kelas');
  }
  function hapusmapel($con,$c_mapel){
    $akh=mysqli_query($con,"DELETE from gurumapel where c_mapel='$c_mapel' ");
    $akh2=mysqli_query($con,"DELETE from nilai where c_mapel='$c_mapel' ");
    $akh3=mysqli_query($con,"DELETE from mapel where c_mapel='$c_mapel' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../mapel');
  }
  function hapustipenilai($con,$c_tipenilai){
    $akh=mysqli_query($con,"DELETE from nilai where c_tipenilai='$c_tipenilai' ");
    $akh2=mysqli_query($con,"DELETE from tipenilai where c_tipenilai='$c_tipenilai' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../jenisnilai');
  }
  function hapusta($con,$c_ta){
    $akh=mysqli_query($con,"DELETE from jumlahnilra where c_ta='$c_ta' ");
    $akh2=mysqli_query($con,"DELETE from rapotsiswa where c_ta='$c_ta' ");
    $akh3=mysqli_query($con,"DELETE from nilai where c_ta='$c_ta' ");
    $akh4=mysqli_query($con,"DELETE from extrasiswa where c_ta='$c_ta' ");
    $akh5=mysqli_query($con,"DELETE from tahunakademik where c_ta='$c_ta' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../tahunakademik');
  }
  function hapusextra($con,$c_extra){
    $akh=mysqli_query($con,"DELETE from extrasiswa where c_extra='$c_extra' ");
    $akh2=mysqli_query($con,"DELETE from extra where c_extra='$c_extra' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../extra');
  }
  function hapusbackup($con,$c_backup){
    $akh=mysqli_query($con,"DELETE FROM backup where c_backup='$c_backup' ");
    header('location:../../backup');
  }
}
?>
