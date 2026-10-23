<?php
declare(strict_types=1);

// LaundryPriceIndex SDK exists test

require_once __DIR__ . '/../laundrypriceindex_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = LaundryPriceIndexSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
