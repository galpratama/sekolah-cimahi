<?php
namespace App\Helpers;

use Illuminate\Http\Request;

class Authentication {

    /**
     * @return mixed
     */
    public static function isLoggedIn()
    {
        return session()->has('access_token');
    }

    /**
     * @param $access_token
     * @param $refresh_token
     * @param $user_data
     * @return bool
     */
    public static function setSession($access_token, $refresh_token, $user_data)
    {
        session([
            'access_token' => $access_token,
            'refresh_token' => $refresh_token,
            'user_data' => $user_data
        ]);

        return true;
    }

    /**
     * @return bool
     */
    public static function removeSession()
    {
        session()->flush();

        return true;
    }

    /**
     * @param $key
     * @return mixed
     */
    public static function getUserData($key)
    {
        return session('user_data.' . $key);
    }

}