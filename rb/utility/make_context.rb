# LaundryPriceIndex SDK utility: make_context
require_relative '../core/context'
module LaundryPriceIndexUtilities
  MakeContext = ->(ctxmap, basectx) {
    LaundryPriceIndexContext.new(ctxmap, basectx)
  }
end
