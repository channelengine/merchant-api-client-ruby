# ChannelEngineApiClient::CancellationApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancellation_create**](CancellationApi.md#cancellation_create) | **POST** /v2/cancellations | Merchant: Create Cancellation
[**cancellation_index**](CancellationApi.md#cancellation_index) | **GET** /v2/cancellations | Channel: Get Cancellations


# **cancellation_create**
> ApiResponse cancellation_create(cancellation)

Merchant: Create Cancellation

For merchants.    Mark (part of) an order as cancelled.

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

api_instance = ChannelEngineApiClient::CancellationApi.new

cancellation = ChannelEngineApiClient::MerchantCancellationRequest.new # MerchantCancellationRequest | 


begin
  #Merchant: Create Cancellation
  result = api_instance.cancellation_create(cancellation)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling CancellationApi->cancellation_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancellation** | [**MerchantCancellationRequest**](MerchantCancellationRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **cancellation_index**
> CollectionOfChannelCancellationResponse cancellation_index(created_since)

Channel: Get Cancellations

For channels.    Gets all cancellations created since the supplied date.

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

api_instance = ChannelEngineApiClient::CancellationApi.new

created_since = DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 


begin
  #Channel: Get Cancellations
  result = api_instance.cancellation_index(created_since)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling CancellationApi->cancellation_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_since** | **DateTime**|  | 

### Return type

[**CollectionOfChannelCancellationResponse**](CollectionOfChannelCancellationResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



