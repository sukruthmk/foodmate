<?php

class utils {
    
    static function readCSV($csvFile){
        $file_handle = fopen($csvFile, 'r');
        while (!feof($file_handle) ) {
            $line_of_text[] = fgetcsv($file_handle);
        }
        fclose($file_handle);
        return $line_of_text;
    }
    
    static function getValidDbInsertDate($date) {
        if($date) {
            $date = str_replace('/', '-', $date);
            $dbDate = date('Y-m-d', strtotime($date));
        }
        
        return $dbDate;
    }
    
    static function curl_file_get_contents($url)
    {
        $browser = 'Opera/9.80 (J2ME/MIDP; Opera Mini/9.80 (S60; SymbOS; Opera Mobi/23.348; U; en) Presto/2.5.25 Version/10.54';
        $curl = curl_init();

        curl_setopt($curl,CURLOPT_URL,$url); //The URL to fetch. This can also be set when initializing a session with curl_init().
        curl_setopt($curl,CURLOPT_RETURNTRANSFER,TRUE); //TRUE to return the transfer as a string of the return value of curl_exec() instead of outputting it out directly.
        curl_setopt($curl,CURLOPT_ENCODING , "gzip");
        
        curl_setopt($curl, CURLOPT_FAILONERROR, TRUE); //To fail silently if the HTTP code returned is greater than or equal to 400.
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_USERAGENT, $browser);
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, TRUE);

        $contents = curl_exec($curl);
        curl_close($curl);

        return $contents;
    }
    
    /** 
     * Function to encode an array to json with all the options
     * @param <Array> $array 
     * @return <sting> Json String
     */
    static function jsonEncode($array) {
        return json_encode($array, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
    }
    
}
?>
