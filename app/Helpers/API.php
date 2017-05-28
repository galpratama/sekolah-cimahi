<?php
namespace App\Helpers;
use GuzzleHttp\Client as Guzzle;
use GuzzleHttp\Exception\RequestException;

class API {
    /**
     * 1. CURL verify certificate
     * 2. User Agent
     */
    const VERIFY = false;
    const USER_AGENT = 'SekolahCimahiFrontend/1.0';

    /**
     * @param $endpoint
     * @param $method
     * @param $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function call($endpoint, $method, $data, $access_token = null, $multipart = false)
    {
        $client = new Guzzle([
            'timeout'  => 60.0
        ]);
        switch ($method) {
            case 'GET':
                $bodyType = 'query';
                break;
            case 'POST':
                $bodyType = $multipart ? 'multipart' : 'form_params';
                break;
            case 'DELETE':
                $bodyType = 'query';
                break;
            default:
                $bodyType = '';
                break;
        }
        try {
            if (isset($access_token)) {
                $response = $client->request($method, env('API_URL') . $endpoint, [
                    $bodyType => $data,
                    'headers' => [
                        'verify' => static::VERIFY,
                        'User-Agent' => static::USER_AGENT,
                        'Accept'     => 'application/json',
                        'Authorization' => "Bearer " . $access_token,
                    ]
                ]);
            }

            if (is_null($access_token)) {
                $response = $client->request($method, env('API_URL') . $endpoint, [
                    $bodyType => $data,
                    'headers' => [
                        'verify' => static::VERIFY,
                        'User-Agent' => static::USER_AGENT,
                        'Accept'     => 'application/json',
                    ]
                ]);
            }
            return json_decode($response->getBody(),true);
        } catch (RequestException $e) {
            if ($e->hasResponse()) {
                return json_decode($e->getResponse()->getBody(true), true);
            }
        }
    }

    /**
     * @param $endpoint
     * @param array $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function post($endpoint, $data = [], $access_token = null, $multipart = false)
    {
        return static::call($endpoint, 'POST', $data, $access_token, $multipart);
    }

    /**
     * @param $endpoint
     * @param array $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function get($endpoint, $data = [], $access_token = null, $multipart = false)
    {
        return static::call($endpoint, 'GET', $data, $access_token, $multipart);
    }

    /**
     * @param $endpoint
     * @param array $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function put($endpoint, $data = [], $access_token = null, $multipart = false)
    {
        return static::call($endpoint, 'PUT', $data, $access_token, $multipart);
    }

    /**
     * @param $endpoint
     * @param array $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function patch($endpoint, $data = [], $access_token = null, $multipart = false)
    {
        return static::call($endpoint, 'PATCH', $data, $access_token, $multipart);
    }

    /**
     * @param $endpoint
     * @param array $data
     * @param null $access_token
     * @param bool $multipart
     * @return mixed
     */
    public static function delete($endpoint, $data = [], $access_token = null, $multipart = false)
    {
        return static::call($endpoint, 'DELETE', $data, $access_token, $multipart);
    }
}