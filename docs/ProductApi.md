# ChannelEngineApiClient::ProductApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**product_acknowledge_data_changes**](ProductApi.md#product_acknowledge_data_changes) | **POST** /v2/products/data | Channel: Acknowledge Product Data Changes
[**product_acknowledge_offer_changes**](ProductApi.md#product_acknowledge_offer_changes) | **POST** /v2/products/offers | Channel: Acknowledge Product Offer Changes
[**product_create**](ProductApi.md#product_create) | **POST** /v2/products | Merchant: Upsert Products
[**product_delete**](ProductApi.md#product_delete) | **DELETE** /v2/products/{merchantProductNo} | Merchant: Delete Product
[**product_get_by_merchant_product_no**](ProductApi.md#product_get_by_merchant_product_no) | **GET** /v2/products/merchant/{merchantProductNo} | Merchant: Get Product
[**product_get_data_changes**](ProductApi.md#product_get_data_changes) | **GET** /v2/products/data | Channel: Get Product Data Changes
[**product_get_offer_changes**](ProductApi.md#product_get_offer_changes) | **GET** /v2/products/offers | Channel: Get Product Offer Changes


# **product_acknowledge_data_changes**
> ApiResponse product_acknowledge_data_changes(changes)

Channel: Acknowledge Product Data Changes

For channels.                This endpoint should be called after a call to GET 'v2/products/data'. After a call to  this endpoint ChannelEngine 'knows' which products are known to the channel (and the last  time they have been updated) and is therefore able to only return the products  that really have changed since the last call to POST 'v2/products/data'.  The supplied ChannelReturnNo will be saved  in our database and is supposed to be unique, the 'Updated' and 'Removed'  fields consist of ChannelReferences which are sent in a previous call  within the field 'Created'.

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

api_instance = ChannelEngineApiClient::ProductApi.new

changes = ChannelEngineApiClient::ChannelProcessedChangesRequest.new # ChannelProcessedChangesRequest | The merchant references of the products which have been                successfully created, updated or deleted (after a call to 'GetDataChanges')


begin
  #Channel: Acknowledge Product Data Changes
  result = api_instance.product_acknowledge_data_changes(changes)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_acknowledge_data_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changes** | [**ChannelProcessedChangesRequest**](ChannelProcessedChangesRequest.md)| The merchant references of the products which have been                successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;) | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **product_acknowledge_offer_changes**
> ApiResponse product_acknowledge_offer_changes(changes)

Channel: Acknowledge Product Offer Changes

For channels.                After a call to GET 'v2/products/offers' this endpoint should be called with the  ChannelReturnNo of the products that are successfully updated.  Please see 'v2/products/data' and 'v2/products/data' for documentation.

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

api_instance = ChannelEngineApiClient::ProductApi.new

changes = [ChannelEngineApiClient::Array<String>.new] # Array<String> | The channel references of the updated products


begin
  #Channel: Acknowledge Product Offer Changes
  result = api_instance.product_acknowledge_offer_changes(changes)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_acknowledge_offer_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changes** | **Array&lt;String&gt;**| The channel references of the updated products | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **product_create**
> SingleOfProductCreationResult product_create(products)

Merchant: Upsert Products

For merchants.    Upsert (update or create) products. The parent serves as the 'base' product of the children.  For example, the children could be different sizes or colors of the parent product.  For channels where every size and color are different products this does not make any difference  (the children will just be sent separately, while ignoring the parent).  But there are channels where the parent and the children need to be sent together, for example  when there is one product with a list of sizes. In this case all the product information is retrieved  from the parent product while the size list is generated from the children.    Note that the parent itself is a 'blueprint' of the child products and we do our best to make sure it  does not end up on the marketplaces itself. Only the children can be purchased.    It's not possible to nest parent and children more than one level (A parent can have many children,  but any child cannot itself also have children).    The supplied MerchantProductNo needs to be unique.

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

api_instance = ChannelEngineApiClient::ProductApi.new

products = [ChannelEngineApiClient::MerchantProductRequest.new] # Array<MerchantProductRequest> | 


begin
  #Merchant: Upsert Products
  result = api_instance.product_create(products)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **products** | [**Array&lt;MerchantProductRequest&gt;**](MerchantProductRequest.md)|  | 

### Return type

[**SingleOfProductCreationResult**](SingleOfProductCreationResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **product_delete**
> ApiResponse product_delete(merchant_product_no)

Merchant: Delete Product

For merchants.    Delete a product based on the merchant reference.  Note that we do not really delete a product, as the product  might still be referenced by orders etc. Therefore, the references  used for this product cannot be reused. We do however deactivate the product  which means that it will not be sent to channels.

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

api_instance = ChannelEngineApiClient::ProductApi.new

merchant_product_no = "merchant_product_no_example" # String | 


begin
  #Merchant: Delete Product
  result = api_instance.product_delete(merchant_product_no)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchant_product_no** | **String**|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **product_get_by_merchant_product_no**
> SingleOfMerchantProductResponse product_get_by_merchant_product_no(merchant_product_no)

Merchant: Get Product

For merchants.    Retrieve a product based on the merchant reference.

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

api_instance = ChannelEngineApiClient::ProductApi.new

merchant_product_no = "merchant_product_no_example" # String | 


begin
  #Merchant: Get Product
  result = api_instance.product_get_by_merchant_product_no(merchant_product_no)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_get_by_merchant_product_no: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchant_product_no** | **String**|  | 

### Return type

[**SingleOfMerchantProductResponse**](SingleOfMerchantProductResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **product_get_data_changes**
> SingleOfChannelProductChangesResponse product_get_data_changes(opts)

Channel: Get Product Data Changes

For channels.    Get all products which have changes since the post http call to POST 'v2/products/data'.  The response contains the products which should be created, updated or removed from the channel.  After the products have been received and processed successfully 'v2/products/data' should  be called with the merchant references of the products which have been processed (see POST 'v2/products/data').   ChannelEnginewill save this information to make sure that the next call to GET 'v2/products/data' only returns the  products that really have changes (and therefore should be created, updated or deleted).  A channel willing to integrate with channelengine should therefore only do the following things:      1. Periodically poll 'v2/products/data' for changes.      2. If any products are returned, save, update or remove these products.      3. Send the merchant references of the products that have succesfully been processed      in step 2 to POST 'v2/products/data'.       These three simple steps will make sure that the products on the channel will be synchronized   with the products on ChannelEngine. ChannelEngine will use the API key to determine the customer  whose products should be returned. Note that child products are only returned if their parent product  has been acknowledged in a previous transaction. This way ChannelEngine knows the value of   'ChannelParentReference'.

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

api_instance = ChannelEngineApiClient::ProductApi.new

opts = { 
  max_count: 56 # Integer | Optional - limit the amount of products returned for each field              (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
}

begin
  #Channel: Get Product Data Changes
  result = api_instance.product_get_data_changes(opts)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_get_data_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_count** | **Integer**| Optional - limit the amount of products returned for each field              (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number. | [optional] 

### Return type

[**SingleOfChannelProductChangesResponse**](SingleOfChannelProductChangesResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **product_get_offer_changes**
> CollectionOfChannelOfferResponse product_get_offer_changes

Channel: Get Product Offer Changes

For channels.                GET 'v2/products/offers' and POST 'v2/products/offers' closely resemble GET 'v2/products/data' and POST 'v2/products/data'. See the 'v2/products/data'  endpoints for documentation. The difference between both endpoints is that 'v2/products/offers' only returns Price and Stock updates and can (and should)  therefore be called more often to keep this information (which might change frequently) up to date.

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

api_instance = ChannelEngineApiClient::ProductApi.new

begin
  #Channel: Get Product Offer Changes
  result = api_instance.product_get_offer_changes
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ProductApi->product_get_offer_changes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CollectionOfChannelOfferResponse**](CollectionOfChannelOfferResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



