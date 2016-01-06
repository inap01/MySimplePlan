<?php

function getView($filename) {
    $path = "app/components/frontsite/views/".$filename.".php";
    if(file_exists($path))
        include($path);
    else
        echo $filename.".php not found";
}

function getTemplate($filename) {
    $path = "app/components/frontsite/".$filename.".php";
    if(file_exists($path))
        include($path);
    else
        echo $filename.".php not found";
}

function getImage($file) {
    $path = "assets/img/frontsite/".$file;
    if(file_exists($path))
        echo $path;
    else
        echo $path.".php not found";
}

?>