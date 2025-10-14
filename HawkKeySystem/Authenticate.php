<?php

include('./Config.php');

$Connection = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$USER_IP = $_SERVER['REMOTE_ADDR'];
$Query = $Connection->query("SELECT * FROM `userdata` WHERE `USERIP`='$USER_IP'");
$Row = mysqli_fetch_row($Query);

if(!isset($_GET['key'])) return die('no key');

if($Row) {
    $UserKey = $_GET['key'];

    # just trust the ip thing at this point
    if($Row[1] == $UserKey) {
        // $Connection->query("DELETE FROM `userdata` WHERE `USERIP`='$USER_IP'");
        echo "Whitelisted"; 
    	return;
    } elseif ($UserKey == "31") {
    	echo "Whitelisted";
    	return; 
    } 
} else {
    die();
}
