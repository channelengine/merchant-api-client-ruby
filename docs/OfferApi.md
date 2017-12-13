# ChannelEngineApiClient::OfferApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**offer_stock_price_update**](OfferApi.md#offer_stock_price_update) | **PUT** /v2/offer | Update stock or price.


# **offer_stock_price_update**
> SingleOfCollectionsDictionary2Generic offer_stock_price_update(updates)

Update stock or price.

### Example
```ruby
# load the gem
require 'channelengine_api_client_ruby'
# setup authorization
ChannelEngineApiClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ChannelEngineApiClient::OfferApi.new

updates = [ChannelEngineApiClient::MerchantStockPriceUpdateRequest.new] # Array<MerchantStockPriceUpdateRequest> | References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both.


begin
  #Update stock or price.
  result = api_instance.offer_stock_price_update(updates)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OfferApi->offer_stock_price_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updates** | [**Array&lt;MerchantStockPriceUpdateRequest&gt;**](MerchantStockPriceUpdateRequest.md)| References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both. | 

### Return type

[**SingleOfCollectionsDictionary2Generic**](SingleOfCollectionsDictionary2Generic.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



