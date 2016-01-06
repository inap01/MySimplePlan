<?php

require "../bootstrap.php";

$id = $_GET['id'];

$db = new DB();
$result = $db->query("select * from user where ID = ".$id);

echo json_encode((array)$result);

?>