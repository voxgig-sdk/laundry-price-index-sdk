# LaundryPriceIndex SDK utility: make_context

from laundrypriceindex_sdk.core.context import LaundryPriceIndexContext


def make_context_util(ctxmap, basectx):
    return LaundryPriceIndexContext(ctxmap, basectx)
