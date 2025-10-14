<?php

include('./Config.php');

$Connection = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$USER_IP = $_SERVER['REMOTE_ADDR'];
$Query = $Connection->query("SELECT * FROM `userdata` WHERE `USERIP`='$USER_IP'");
$Row = mysqli_fetch_row($Query);

if(!isset($_GET['key'])) return die('no key');
if(!isset($_GET['rand'])) return die('no rand');

if($Row) {
    $UserKey = $_GET['key'];
    $UserRand = $_GET['rand'];

    # just trust the ip thing at this point
    if($Row[2] == 1 && $Row[1] == $UserKey) {
        $Connection->query("DELETE FROM `userdata` WHERE `USERIP`='$USER_IP'");
        die(md5(md5($UserKey) . md5($UserRand)));
    }

} else {
    die();
}
