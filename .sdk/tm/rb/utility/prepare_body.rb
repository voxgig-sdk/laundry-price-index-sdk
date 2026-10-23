# LaundryPriceIndex SDK utility: prepare_body
require_relative 'media'
module LaundryPriceIndexUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return LaundryPriceIndexUtilities.raw_body(ctx.reqdata) if LaundryPriceIndexUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
