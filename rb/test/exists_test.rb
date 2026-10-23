# LaundryPriceIndex SDK exists test

require "minitest/autorun"
require_relative "../LaundryPriceIndex_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = LaundryPriceIndexSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
