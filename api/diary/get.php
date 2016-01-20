<?php

require "../bootstrap.php";

$params = json_decode(file_get_contents('php://input'),true);
$id = $params['id'];
$meal = $params['meal'];

$db = new DB();
$sql = "select * from diary join foods on foods.ID = diary.food_id where user_id = '".$id."' and meal = '".$meal."'";
$result = $db->query($sql);


echo json_encode((array)$result);

?>