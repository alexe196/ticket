<?php

use App\Router\Web;

require_once "vendor/autoload.php";
require_once "src/DB/Connect.php";
require_once 'src/Helpers/heplper.php';

$router = new Web();
$router->run();