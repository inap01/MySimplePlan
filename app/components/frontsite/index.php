<?php
require "app/components/frontsite/functions.php";

getTemplate("header");
getTemplate("navi");

getView("landing");
getView("process");

getTemplate("footer");

?>