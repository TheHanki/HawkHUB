<?php

include('./Config.php');

$Connection = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

$USER_IP = $_SERVER['REMOTE_ADDR'];


$Query = $Connection->query("SELECT * FROM `userdata` WHERE `USERIP`='$USER_IP'");
$Row = mysqli_fetch_row($Query);

if(isset($_GET['solve'])) {
    if($Row) {
        if($Row[2] == 0) {
            $Connection->query("UPDATE `userdata` SET `USERPASS`=1 WHERE `USERIP`='$USER_IP'");
	    header('refresh:0;url=./generated.php');
        }
    }
} else {
    if(!$Row) {
        $USER_KEY = md5(random_bytes(32));
        $Connection->query("INSERT INTO `userdata`(`USERIP`, `USERKEY`, `USERPASS`) VALUES ('$USER_IP','$USER_KEY',0)");
        die(json_encode(["solve"=>USER_FINISH]));
    } else {
        if($Row[2] == 1) {
            die(json_encode(["key"=>$Row[1]]));
        } else {
        	die(json_encode(["solve"=>USER_FINISH]));
        }
    }
}
