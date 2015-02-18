<?php

require_once 'Controllers/BaseController.php';
require_once 'Modules/Module.php';
require_once 'Modules/Record.php';
require_once 'libs/mpdf/mpdf.php';

class PDFController extends BaseController {
    
    function process() {
        $data = json_decode($_REQUEST['data'],true);
        $viewer = $this->getViewer();
        $viewer->assign('ACTION', $this->getClass());
        $viewer->assign('RESTORANT', $data);

        $html = $viewer->fetch('PDF.tpl');
        $mpdf=new mPDF();
        $mpdf->WriteHTML($html);
        $mpdf->Output();
        exit;
    }
    
}

?>