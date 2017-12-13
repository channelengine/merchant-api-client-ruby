# ChannelEngineApiClient::ClientApi

All URIs are relative to *http://dev.channelengine.local/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**client_get**](ClientApi.md#client_get) | **GET** /v2/clients/{language} | Get API Client


# **client_get**
> File client_get(language)

Get API Client

This call generates a Swagger API client and returns it as a ZIP

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

api_instance = ChannelEngineApiClient::ClientApi.new

language = "language_example" # String | The programming language


begin
  #Get API Client
  result = api_instance.client_get(language)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling ClientApi->client_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| The programming language | 

### Return type

**File**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip



