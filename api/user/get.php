<?php

require "../bootstrap.php";

$params = json_decode(file_get_contents('php://input'),true);
$id = $params['id'];

$db = new DB();
$result = $db->query("select * from user where ID = ".$id);

echo json_encode((array)$result);

?>