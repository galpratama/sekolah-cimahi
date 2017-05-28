<?php
namespace App\Helpers;

use Response;

class ResponseHelper {
    public static function output($data, $success_response = 'Data Found', $success_code = 200)
    {
        if (count($data)>0) {
            if (is_object($data))
                $data = $data->toArray();

            $output['meta']=[
                'code'=> $success_code,
                'message'=> $success_response
            ];

            $output['data'] = $data;

            if (isset($data['data'])) {
                $output['data'] = $data['data'];
                $output['pagination'] = array_except($data, 'data');
            }

            return Response::json($output, $success_code);

        } else {
            $output['meta']=[
                'code'=>404,
                'message'=>'Data Not Found'
            ];

            return Response::json($output, 404);
        }
    }

    public static function error($code = '', $message = '')
    {
        switch ($code) {
            case 400:
                $httpMessage = 'Bad Request';
                break;

            case 401:
                $httpMessage = 'Unauthorized';
                break;

            case 403:
                $httpMessage = 'Forbidden';
                break;

            case 404:
                $httpMessage = 'Not Found';
                break;

            case 405:
                $httpMessage = 'Method Not Allowed';
                break;

            case 422:
                $httpMessage = 'Unprocessable Entity';
                break;

            case 500:
                $httpMessage = 'Internal Server Error';
                break;

            default:
                $httpMessage = 'Internal server error';
                break;
        }

        $output['meta']=[
            'code'=>$code,
            'message'=> empty($message) ? $httpMessage : $message
        ];

        return Response::json($output, $code);
    }

    public static function validate($validate, $message = '', $data = '')
    {
        if ($validate->fails()) {
            $errors = array_flatten($validate->errors()->toArray());

            $output['meta']=[
                'code'=>422,
                'message'=> array_first($errors)
            ];

            return Response::json($output, 422);
        }

        $output['meta']=[
            'code'=>200,
            'message'=> $message == '' || !is_string($message) ? 'Data has been saved' : $message
        ];

        $output['data'] = $data;

        if (!is_string($message))
            $output['data'] = $message;

        return Response::json($output, 422);
    }
}
