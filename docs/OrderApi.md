# ChannelEngineApiClient::OrderApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_acknowledge**](OrderApi.md#order_acknowledge) | **POST** /v2/orders/acknowledge | Merchant: Acknowledge Order
[**order_create**](OrderApi.md#order_create) | **POST** /v2/orders | Channel: Create Order
[**order_get_by_filter**](OrderApi.md#order_get_by_filter) | **GET** /v2/orders | Merchant: Get Orders By Filter
[**order_get_new**](OrderApi.md#order_get_new) | **GET** /v2/orders/new | Merchant: Get New Orders
[**order_invoice**](OrderApi.md#order_invoice) | **GET** /v2/orders/{merchantOrderNo}/invoice | Merchant: Download Invoice
[**order_packing_slip**](OrderApi.md#order_packing_slip) | **GET** /v2/orders/{merchantOrderNo}/packingslip | Merchant: Download Packing Slip


# **order_acknowledge**
> ApiResponse order_acknowledge(model)

Merchant: Acknowledge Order

For merchants.    Acknowledge an order. By acknowledging the order the merchant can confirm that  the order has been imported. When acknowledging an order the merchant has to supply  references that uniquely identify the order and the order lines. These references  will be used in the other API calls.

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

api_instance = ChannelEngineApiClient::OrderApi.new

model = ChannelEngineApiClient::OrderAcknowledgement.new # OrderAcknowledgement | Relations between the id's returned by ChannelEngine and the references which the merchant uses


begin
  #Merchant: Acknowledge Order
  result = api_instance.order_acknowledge(model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_acknowledge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**OrderAcknowledgement**](OrderAcknowledgement.md)| Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **order_create**
> ApiResponse order_create(model)

Channel: Create Order

For channels.    Create a new order in ChannelEngine.

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

api_instance = ChannelEngineApiClient::OrderApi.new

model = ChannelEngineApiClient::ChannelOrderRequest.new # ChannelOrderRequest | 


begin
  #Channel: Create Order
  result = api_instance.order_create(model)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**ChannelOrderRequest**](ChannelOrderRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **order_get_by_filter**
> CollectionOfMerchantOrderResponse order_get_by_filter(opts)

Merchant: Get Orders By Filter

For merchants.                Fetch orders based on the provided OrderFilter

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

api_instance = ChannelEngineApiClient::OrderApi.new

opts = { 
  filter_statuses: ["filter_statuses_example"], # Array<String> | 
  filter_merchant_order_nos: ["filter_merchant_order_nos_example"], # Array<String> | 
  filter_exclude_marketplace_fulfilled_orders_and_lines: true, # BOOLEAN | 
  filter_fulfillment_type: "filter_fulfillment_type_example", # String | Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
  filter_page: 56 # Integer | 
}

begin
  #Merchant: Get Orders By Filter
  result = api_instance.order_get_by_filter(opts)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_get_by_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_statuses** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **filter_merchant_order_nos** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **filter_exclude_marketplace_fulfilled_orders_and_lines** | **BOOLEAN**|  | [optional] 
 **filter_fulfillment_type** | **String**| Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true. | [optional] 
 **filter_page** | **Integer**|  | [optional] 

### Return type

[**CollectionOfMerchantOrderResponse**](CollectionOfMerchantOrderResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **order_get_new**
> CollectionOfMerchantOrderResponse order_get_new

Merchant: Get New Orders

For merchants.                Fetch newly placed orders (order with status NEW).

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

api_instance = ChannelEngineApiClient::OrderApi.new

begin
  #Merchant: Get New Orders
  result = api_instance.order_get_new
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_get_new: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CollectionOfMerchantOrderResponse**](CollectionOfMerchantOrderResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **order_invoice**
> File order_invoice(merchant_order_no, opts)

Merchant: Download Invoice

For merchants.    Generates the ChannelEngine VAT invoice for this order in PDF

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

api_instance = ChannelEngineApiClient::OrderApi.new

merchant_order_no = "merchant_order_no_example" # String | The unique order reference as used by the merchant

opts = { 
  use_customer_culture: true # BOOLEAN | Generate the invoice in the billing address' country's language
}

begin
  #Merchant: Download Invoice
  result = api_instance.order_invoice(merchant_order_no, opts)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchant_order_no** | **String**| The unique order reference as used by the merchant | 
 **use_customer_culture** | **BOOLEAN**| Generate the invoice in the billing address&#39; country&#39;s language | [optional] 

### Return type

**File**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf



# **order_packing_slip**
> File order_packing_slip(merchant_order_no, opts)

Merchant: Download Packing Slip

For merchants.    Generates the ChannelEngine packing slip for this order in PDF

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

api_instance = ChannelEngineApiClient::OrderApi.new

merchant_order_no = "merchant_order_no_example" # String | The unique order reference as used by the merchant

opts = { 
  use_customer_culture: true # BOOLEAN | Generate the invoice in the billing address' country's language
}

begin
  #Merchant: Download Packing Slip
  result = api_instance.order_packing_slip(merchant_order_no, opts)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling OrderApi->order_packing_slip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchant_order_no** | **String**| The unique order reference as used by the merchant | 
 **use_customer_culture** | **BOOLEAN**| Generate the invoice in the billing address&#39; country&#39;s language | [optional] 

### Return type

**File**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf



