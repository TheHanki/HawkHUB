<?
    ini_set('display_errors', 'Off');
 error_reporting(0);
    session_start();
    $_SESSION['time'] = time(); 
?>

<?php
include('./Config.php');

$Connection = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

$Connection->query("DELETE FROM userdata WHERE created_at <= DATE_SUB(NOW(), INTERVAL 1 DAY)");

?>

<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Checkpoint 1-2 | Hawk HUB</title>
  <link rel="shortcut icon" type="https://hawksoftworks.ga/Hawk_Christmas.png" href="https://hawksoftworks.ga/Hawk_Christmas.png" />

  <!-- CUSTOM CSS -->
  <link href="https://hawksoftworks.ga/Hawk/style.css" rel="stylesheet">

</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav" style="background-color: rgb(25, 25, 25);">
    <center>
  <img src="https://hawksoftworks.ga/Hawk_Christmas.png" alt="Hawk Logo" id="HawkImage" style="text-align: center" width="200" height="200">
            <br>
   </center>
<!--================================
=            Page Title            =
=================================-->

<section class="section page-title" style="color:white";>
	<div class="container" style="color:white";>
		<div class="row" style="color:white";>
			<div class="col-sm-8 m-auto">
				<!-- Page Title -->
				<h1 style="color:white;">Hawk Checkpoint 1</h1>
				<!-- Page Description -->
				<p></p>
			</div>
		</div>
	</div>
</section>

<!--====  End of Page Title  ====-->

<style>
    .text-center {
        text-align: center;
    }
</style>

<section class="JoinPanda">
  <div>
    <div class="col-12 text-center">
      <p>Please Check If you're Human or Not?</p>
      <p>Checkpoint [ 1 of 2 ]</p>
      <form id="frmContact" action="https://hawksoftworks.ga/Hawk/redirect.php" method="POST" novalidate="novalidate">
   <div style="display: inline-block;" class="g-recaptcha" data-sitekey="6LdhAk8jAAAAAAbV6p63hDN16i4yxh6QdL2-DxxF"></div>
   <div style="text-align: center;">
   <input type="Submit" name="Submit">
      </div>
  </div>
  </form>
</section>



<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


  <!-- To Top -->
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  
  <!-- JAVASCRIPTS -->
  <script src='https://www.google.com/recaptcha/api.js' async defer ></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
  
  <script src="js/script.js"></script>
</body>

</html>

<?php
  if(!empty($_POST['g-recaptcha-response']))
  {
        $secret = '6LdhAk8jAAAAAKRwW-jlE52lcQI_zuLMiQodYL45';
        $verifyResponse = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret.'&response='.$_POST['g-recaptcha-response']);
        $responseData = json_decode($verifyResponse);
        if($responseData->success)
            $message = "g-recaptcha varified successfully";  
        else
            $message = "Some error in vrifying g-recaptcha";
       echo $message;
   }
?>