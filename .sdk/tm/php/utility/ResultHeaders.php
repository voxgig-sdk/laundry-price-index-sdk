<?php
declare(strict_types=1);

// LaundryPriceIndex SDK utility: result_headers

class LaundryPriceIndexResultHeaders
{
    public static function call(LaundryPriceIndexContext $ctx): ?LaundryPriceIndexResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
