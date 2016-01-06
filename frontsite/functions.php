<?php

function getView($filename) {
    $path = "frontsite/views/".$filename.".php";
    if(file_exists($path))
        include($path);
    else
        echo $filename.".php not found";
}

function getTemplate($filename) {
    $path = "frontsite/".$filename.".php";
    if(file_exists($path))
        include($path);
    else
        echo $filename.".php not found";
}

?>