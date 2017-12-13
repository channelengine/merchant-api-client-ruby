# ChannelEngineApiClient::ReturnApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**return_declare_for_channel**](ReturnApi.md#return_declare_for_channel) | **POST** /v2/returns/channel | Channel: Create Return
[**return_declare_for_merchant**](ReturnApi.md#return_declare_for_merchant) | **POST** /v2/returns/merchant | Merchant: Create Return
[**return_get_declared_by_channel**](ReturnApi.md#return_get_declared_by_channel) | **GET** /v2/returns/merchant | Merchant: Get Returns
[**return_get_declared_by_merchant**](ReturnApi.md#return_get_declared_by_merchant) | **GET** /v2/returns/channel | Channel: Get Returns


# **return_declare_for_channel**
> ApiResponse return_declare_for_channel(model)

Channel: Create Return

For channels.                Mark (part of) an order as returned by the customer.

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

api_instance = ChannelEngineApiClient::ReturnApi.new

model = ChannelEngineApiClient::ChannelReturnRequest.new # ChannelReturnRequest | 


begin
  #Channel: Create Return
  result = api_instance.return_declare_for_channel(model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ReturnApi->return_declare_for_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ChannelReturnRequest**](ChannelReturnRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **return_declare_for_merchant**
> ApiResponse return_declare_for_merchant(model)

Merchant: Create Return

For merchants.    Mark (part of) an order as returned by the customer.

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

api_instance = ChannelEngineApiClient::ReturnApi.new

model = ChannelEngineApiClient::MerchantReturnRequest.new # MerchantReturnRequest | 


begin
  #Merchant: Create Return
  result = api_instance.return_declare_for_merchant(model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ReturnApi->return_declare_for_merchant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**MerchantReturnRequest**](MerchantReturnRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **return_get_declared_by_channel**
> CollectionOfMerchantReturnResponse return_get_declared_by_channel(created_since)

Merchant: Get Returns

For merchants.    Get all returns created by the channel. This call is supposed  to be used by merchants. Channels should use the 'GET /v2/returns/channel'  call.

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

api_instance = ChannelEngineApiClient::ReturnApi.new

created_since = DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 


begin
  #Merchant: Get Returns
  result = api_instance.return_get_declared_by_channel(created_since)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ReturnApi->return_get_declared_by_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_since** | **DateTime**|  | 

### Return type

[**CollectionOfMerchantReturnResponse**](CollectionOfMerchantReturnResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **return_get_declared_by_merchant**
> CollectionOfChannelReturnResponse return_get_declared_by_merchant(created_since)

Channel: Get Returns

For channels.                Get all returns created by the merchant. This call is supposed  to be used by channels. Merchants should use the 'GET /v2/returns/merchant'  call.

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

api_instance = ChannelEngineApiClient::ReturnApi.new

created_since = DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 


begin
  #Channel: Get Returns
  result = api_instance.return_get_declared_by_merchant(created_since)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ReturnApi->return_get_declared_by_merchant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_since** | **DateTime**|  | 

### Return type

[**CollectionOfChannelReturnResponse**](CollectionOfChannelReturnResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



