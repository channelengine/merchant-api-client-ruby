# ChannelEngineApiClient::ShipmentApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shipment_create**](ShipmentApi.md#shipment_create) | **POST** /v2/shipments | Merchant: Create Shipment
[**shipment_index**](ShipmentApi.md#shipment_index) | **GET** /v2/shipments | Channel: Get Shipments
[**shipment_update**](ShipmentApi.md#shipment_update) | **PUT** /v2/shipments/{merchantShipmentNo} | Merchant: Update Shipment


# **shipment_create**
> ApiResponse shipment_create(model)

Merchant: Create Shipment

For merchants.    Mark (part of) an order as shipped.

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

api_instance = ChannelEngineApiClient::ShipmentApi.new

model = ChannelEngineApiClient::MerchantShipmentRequest.new # MerchantShipmentRequest | 


begin
  #Merchant: Create Shipment
  result = api_instance.shipment_create(model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ShipmentApi->shipment_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**MerchantShipmentRequest**](MerchantShipmentRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **shipment_index**
> CollectionOfChannelShipmentResponse shipment_index(created_since)

Channel: Get Shipments

For channels.    Gets all shipments created since the supplied date.

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

api_instance = ChannelEngineApiClient::ShipmentApi.new

created_since = DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | 


begin
  #Channel: Get Shipments
  result = api_instance.shipment_index(created_since)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ShipmentApi->shipment_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_since** | **DateTime**|  | 

### Return type

[**CollectionOfChannelShipmentResponse**](CollectionOfChannelShipmentResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **shipment_update**
> ApiResponse shipment_update(merchant_shipment_no, model)

Merchant: Update Shipment

For merchants.    Update an existing shipment with tracking information

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

api_instance = ChannelEngineApiClient::ShipmentApi.new

merchant_shipment_no = "merchant_shipment_no_example" # String | The merchant's shipment reference

model = ChannelEngineApiClient::MerchantShipmentTrackingRequest.new # MerchantShipmentTrackingRequest | The updated tracking information


begin
  #Merchant: Update Shipment
  result = api_instance.shipment_update(merchant_shipment_no, model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ShipmentApi->shipment_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchant_shipment_no** | **String**| The merchant&#39;s shipment reference | 
 **model** | [**MerchantShipmentTrackingRequest**](MerchantShipmentTrackingRequest.md)| The updated tracking information | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



