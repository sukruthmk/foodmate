<?php

require_once 'config.php';
require_once 'Controllers/HomeController.php';
require_once 'libs/Database/Database.php';
require_once 'libs/utils/utils.php';

$action = $_REQUEST['action'];
if(!empty($action)) {
    require_once 'Controllers/'.$action.'Controller.php';
    $actionController = $action.'Controller';
    $instance = new $actionController($_REQUEST);
    $instance->process();
} else {
    $_REQUEST['action'] = 'Home';
    $instance = new HomeController($_REQUEST);
    $instance->process();
}

?>
