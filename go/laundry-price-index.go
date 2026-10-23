package voxgiglaundrypriceindexsdk

import (
	"github.com/voxgig-sdk/laundry-price-index-sdk/go/core"
	"github.com/voxgig-sdk/laundry-price-index-sdk/go/entity"
	"github.com/voxgig-sdk/laundry-price-index-sdk/go/feature"
	_ "github.com/voxgig-sdk/laundry-price-index-sdk/go/utility"
)

// Type aliases preserve external API.
type LaundryPriceIndexSDK = core.LaundryPriceIndexSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type LaundryPriceIndexEntity = core.LaundryPriceIndexEntity
type StreamItem = core.StreamItem
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type LaundryPriceIndexError = core.LaundryPriceIndexError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewRatelimitFeatureFunc = func() core.Feature {
		return feature.NewRatelimitFeature()
	}
	core.NewRetryFeatureFunc = func() core.Feature {
		return feature.NewRetryFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewTimeoutFeatureFunc = func() core.Feature {
		return feature.NewTimeoutFeature()
	}
	core.NewEnquiryEntityFunc = func(client *core.LaundryPriceIndexSDK, entopts map[string]any) core.LaundryPriceIndexEntity {
		return entity.NewEnquiryEntity(client, entopts)
	}
	core.NewMcpEntityFunc = func(client *core.LaundryPriceIndexSDK, entopts map[string]any) core.LaundryPriceIndexEntity {
		return entity.NewMcpEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewLaundryPriceIndexSDK = core.NewLaundryPriceIndexSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var SharedConfig = core.SharedConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewLaundryPriceIndexSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *LaundryPriceIndexSDK  { return NewLaundryPriceIndexSDK(nil) }
func Test() *LaundryPriceIndexSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewRatelimitFeature = feature.NewRatelimitFeature
var NewRetryFeature = feature.NewRetryFeature
var NewTestFeature = feature.NewTestFeature
var NewTimeoutFeature = feature.NewTimeoutFeature
