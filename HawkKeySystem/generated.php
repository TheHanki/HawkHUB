<?php
ini_set('display_errors', 'Off');
error_reporting(0);
session_start();

if(time() - $_SESSION['timetwo'] < 10 || !isset($_SESSION['timetwo']))
{
	echo "[ ERROR ] - you did not complete the linkvertise";
	echo "<meta http-equiv='Refresh' Content='4;url=./step1.php'>"; 
	return;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <title>Hawk HUB</title>
  <link rel="shortcut icon" type="https://hawksoftworks.ga/Hawk_Christmas.png" href="https://hawksoftworks.ga/Hawk_Christmas.png" />
  <link href="https://pandatechnology.xyz/css/style.css" rel="stylesheet">


</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav" style="background-color: rgb(25, 25, 25);">
   <center>
  <img src="https://hawksoftworks.ga/Hawk_Christmas.png" alt="Hawk Logo" id="HawkImage" style="text-align: center" width="100" height="100">
            <br>
   </center>
<!--================================
=            Page Title            =
=================================-->

<section class="section page-title">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 m-auto">
				<!-- Page Title -->
				<h1 style="color:white">Heres your Key</h1>
				<!-- Page Description -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Key Generation Page</title>
</head>
<body style="height: 100%; text-align: center; margin-top: 20%;">
    <input id="status" type="text" placeholder="Your Key Will Appear Here" readonly="true">
    <br>
    <button onclick="generate_key()">Generate Key</button>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        function generate_key()
        {
            $.get('Generate.php', (data) => {
                let Resp = data && JSON.parse(data);
                if(!Resp) return alert('failed to get data');

                if (Resp.key) {
                    document.getElementById('status').value = Resp.key
                } else if(Resp.solve) {
                    window.location.href = Resp.solve
                }
            })
        }
    </script>
</body>
</html>
				<p></p>
			</div>
		</div>
	</div>
</section>

<!--====  End of Page Title  ====-->


<section class="JoinPanda">
  <div>
    <div class="col-12 text-center">
    <style>
    .text-center {
        text-align: center;
    }
    </style>
    <p id="Notif"style="text-align: center;">Enjoy</p>
</body>
<script>

</script>


    </div>
  </div>
</section>

<br>
<br>
<br>
<br>
</footer>
</html>

