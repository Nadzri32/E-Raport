<?php
$dbhost ='nadzri32.github.io';
$dbuser ='root';
$dbpass ='';
$dbname ='rapotonline';
$db_dsn = "mysql:dbname=$dbname;host=$dbhost";
try {
  $db = new PDO($db_dsn, $dbuser, $dbpass);
} catch (PDOException $e) {
  echo 'Connection failed: '.$e->getMessage();
}
$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
($GLOBALS["___mysqli_ston"] = mysqli_connect($dbhost, $dbuser, $dbpass));mysqli_select_db($GLOBALS["___mysqli_ston"], $dbname);
/*css.plugin.hancon <?php echo $base; ?>*/
$base='https://nadzri32.github.io/E-Raport/';
/*control(link.redirect) <?php echo $basecon; ?>*/
$basead='https://nadzri32.github.io/E-Raport/admin/';
/*kelas(link.redirect) <?php echo $basekel; ?>*/
$basegu='https://nadzri32.github.io/E-Raport/guru/';
$basewa='https://nadzri32.github.io/E-Raport/walikelas/';
$basewam='https://nadzri32.github.io/E-Raport/walimurid/';

$aplikasi=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aplikasi limit 1"));
$ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where status='aktif' ")); $c_ta=$ata['c_ta'];
?>
