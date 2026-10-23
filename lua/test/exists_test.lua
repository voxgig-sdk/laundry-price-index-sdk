-- LaundryPriceIndex SDK exists test

local sdk = require("laundry-price-index_sdk")

describe("LaundryPriceIndexSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
