# LaundryPriceIndex SDK exists test

import pytest
from laundrypriceindex_sdk import LaundryPriceIndexSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = LaundryPriceIndexSDK.test(None, None)
        assert testsdk is not None
