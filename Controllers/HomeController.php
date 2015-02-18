<?php

require_once 'Controllers/BaseController.php';
require_once 'Modules/Module.php';
require_once 'Modules/Record.php';

class HomeController extends BaseController {
    
    function process() {
        $url = 'http://foodpanda.0x10.info/api/restaurants?type=json';
        $data = json_decode(utils::curl_file_get_contents($url),true);
        $viewer = $this->getViewer();
        $viewer->assign('ACTION', $this->getClass());
        $viewer->assign('DATA', $data);

        $viewer->display('Home.tpl');
    }
    
    
}

?>
