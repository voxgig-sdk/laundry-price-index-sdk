<?php
declare(strict_types=1);

// LaundryPriceIndex SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class LaundryPriceIndexMakeContext
{
    public static function call(array $ctxmap, ?LaundryPriceIndexContext $basectx): LaundryPriceIndexContext
    {
        return new LaundryPriceIndexContext($ctxmap, $basectx);
    }
}
