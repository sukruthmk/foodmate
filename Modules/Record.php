<?php

class Record {
    var $valueMap;
    static $nextPage = false;
    static $previousPage = false;
    
    function get($key) {
        return $this->valueMap[$key];
    }
    
    function set($key, $value) {
        return $this->valueMap[$key] = $value;
    }
    
    function getId() {
        return $this->get('id');
    }
    
    function getData() {
        return $this->valueMap;
    }
    
    function setData($data) {
        $this->valueMap = $data;
    }
    
    function setId($id) {
        $this->set('id', $id);
    }
    
    static function getInstance($valueMap = array()) {
        $instance = new self();
        $instance->setData($valueMap);
        
        return $instance;
    }
    
    static function getPaginationLimit($page) {
        $start = $page*10;
        $end = $start+10+1;
        $limit = $start.",".$end;
        
        return $limit;
    }
}
?>
