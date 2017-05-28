<?php
namespace App\Helpers;

class Generate {

    /**
     * @param int $value
     * @return string
     */
    public static function money($value = 0)
    {
        return 'Rp. ' . number_format( $value, 0 , '' , '.' ) . ',-';
    }

    public static function getFileExtension($file_name) {
        return pathinfo($file_name, PATHINFO_EXTENSION);
    }

    /**
     * @param $investment
     * @param $rate
     * @return float|int
     */
    public static function profit($investment, $rate)
    {
        return static::money($investment / 100 * $rate);
    }

    /**
     * @param $string
     * @return mixed|string
     */
    public static function slugUrl($string)
    {
        $string = strtolower($string);
        $string = preg_replace("/[^a-z0-9_\s-]/", "", $string);
        $string = preg_replace("/[\s-]+/", " ", $string);
        $string = preg_replace("/[\s_]/", "-", $string);
        return $string;
    }

    /**
     * @param $startDate
     * @param $endDate
     * @return float|int
     */
    public static function countAvailableDay($startDate, $endDate)
    {
        return ((abs(strtotime ($startDate) - strtotime ($endDate)))/(60*60*24));
    }

    public static function projectStatus($status) {
        switch ($status) {
            case 'PENDING':
                return trans('project.pending');
                break;

            case 'ON GOING':
                return trans('project.ongoing');
                break;

            case 'FINISHED':
                return trans('project.finished');
                break;
        }
    }

    public static function scheme($status) {
        switch ($status) {
            case 'PROFIT_SHARING':
                return trans('project.profit_sharing');
                break;

            case 'LOAN':
                return trans('project.loan');
                break;
        }
    }

    public static function riskbr($status) {
        switch ($status) {
            case 'LOW':
                return trans('project.risk_level.lowbr');
                break;

            case 'MODERATE':
                return trans('project.risk_level.moderatebr');
                break;

            case 'HIGH':
                return trans('project.risk_level.highbr');
                break;
        }
    }

    public static function risk($status) {
        switch ($status) {
            case 'LOW':
                return trans('project.risk_level.low');
                break;

            case 'MODERATE':
                return trans('project.risk_level.moderate');
                break;

            case 'HIGH':
                return trans('project.risk_level.high');
                break;
        }
    }

    public static function encryptedURL($action, $string) {
        $output = false;
        $encrypt_method = "AES-256-CBC";
        $secret_key = 'This is my secret key';
        $secret_iv = 'This is my secret iv';
        // hash
        $key = hash('sha256', $secret_key);

        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $secret_iv), 0, 16);
        if ( $action == 'encrypt' ) {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
            $output = base64_encode($output);
        } else if( $action == 'decrypt' ) {
            $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        }
        return $output;
    }
}