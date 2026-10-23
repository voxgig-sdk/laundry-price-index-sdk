<?php
declare(strict_types=1);

// LaundryPriceIndex SDK base feature

class LaundryPriceIndexBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(LaundryPriceIndexContext $ctx, array $options): void {}
    public function PostConstruct(LaundryPriceIndexContext $ctx): void {}
    public function PostConstructEntity(LaundryPriceIndexContext $ctx): void {}
    public function SetData(LaundryPriceIndexContext $ctx): void {}
    public function GetData(LaundryPriceIndexContext $ctx): void {}
    public function GetMatch(LaundryPriceIndexContext $ctx): void {}
    public function SetMatch(LaundryPriceIndexContext $ctx): void {}
    public function PrePoint(LaundryPriceIndexContext $ctx): void {}
    public function PreSpec(LaundryPriceIndexContext $ctx): void {}
    public function PreRequest(LaundryPriceIndexContext $ctx): void {}
    public function PreResponse(LaundryPriceIndexContext $ctx): void {}
    public function PreResult(LaundryPriceIndexContext $ctx): void {}
    public function PreDone(LaundryPriceIndexContext $ctx): void {}
    public function PreUnexpected(LaundryPriceIndexContext $ctx): void {}
}
