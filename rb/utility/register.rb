# LaundryPriceIndex SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

LaundryPriceIndexUtility.registrar = ->(u) {
  u.clean = LaundryPriceIndexUtilities::Clean
  u.clean_add = LaundryPriceIndexUtilities::CleanAdd
  u.clean_explain = LaundryPriceIndexUtilities::CleanExplain
  u.done = LaundryPriceIndexUtilities::Done
  u.make_error = LaundryPriceIndexUtilities::MakeError
  u.feature_add = LaundryPriceIndexUtilities::FeatureAdd
  u.feature_hook = LaundryPriceIndexUtilities::FeatureHook
  u.feature_init = LaundryPriceIndexUtilities::FeatureInit
  u.fetcher = LaundryPriceIndexUtilities::Fetcher
  u.make_fetch_def = LaundryPriceIndexUtilities::MakeFetchDef
  u.make_context = LaundryPriceIndexUtilities::MakeContext
  u.make_options = LaundryPriceIndexUtilities::MakeOptions
  u.make_request = LaundryPriceIndexUtilities::MakeRequest
  u.make_response = LaundryPriceIndexUtilities::MakeResponse
  u.make_result = LaundryPriceIndexUtilities::MakeResult
  u.make_point = LaundryPriceIndexUtilities::MakePoint
  u.make_spec = LaundryPriceIndexUtilities::MakeSpec
  u.make_url = LaundryPriceIndexUtilities::MakeUrl
  u.param = LaundryPriceIndexUtilities::Param
  u.prepare_auth = LaundryPriceIndexUtilities::PrepareAuth
  u.prepare_body = LaundryPriceIndexUtilities::PrepareBody
  u.prepare_headers = LaundryPriceIndexUtilities::PrepareHeaders
  u.prepare_method = LaundryPriceIndexUtilities::PrepareMethod
  u.prepare_params = LaundryPriceIndexUtilities::PrepareParams
  u.prepare_path = LaundryPriceIndexUtilities::PreparePath
  u.prepare_query = LaundryPriceIndexUtilities::PrepareQuery
  u.graphql_body = LaundryPriceIndexUtilities::GraphqlBody
  u.graphql_errors = LaundryPriceIndexUtilities::GraphqlErrors
  u.result_basic = LaundryPriceIndexUtilities::ResultBasic
  u.result_body = LaundryPriceIndexUtilities::ResultBody
  u.result_headers = LaundryPriceIndexUtilities::ResultHeaders
  u.transform_request = LaundryPriceIndexUtilities::TransformRequest
  u.transform_response = LaundryPriceIndexUtilities::TransformResponse
}
