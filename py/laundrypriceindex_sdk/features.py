# LaundryPriceIndex SDK feature factory

from laundrypriceindex_sdk.feature.base_feature import LaundryPriceIndexBaseFeature
from laundrypriceindex_sdk.feature.ratelimit_feature import LaundryPriceIndexRatelimitFeature
from laundrypriceindex_sdk.feature.retry_feature import LaundryPriceIndexRetryFeature
from laundrypriceindex_sdk.feature.test_feature import LaundryPriceIndexTestFeature
from laundrypriceindex_sdk.feature.timeout_feature import LaundryPriceIndexTimeoutFeature


_FEATURES = {
    "base": lambda: LaundryPriceIndexBaseFeature(),
    "ratelimit": lambda: LaundryPriceIndexRatelimitFeature(),
    "retry": lambda: LaundryPriceIndexRetryFeature(),
    "test": lambda: LaundryPriceIndexTestFeature(),
    "timeout": lambda: LaundryPriceIndexTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
