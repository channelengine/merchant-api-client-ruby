# ChannelEngineApiClient::OrderFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statuses** | **Array&lt;String&gt;** |  | [optional] 
**merchant_order_nos** | **Array&lt;String&gt;** |  | [optional] 
**exclude_marketplace_fulfilled_orders_and_lines** | **BOOLEAN** |  | [optional] 
**fulfillment_type** | **String** | Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true. | [optional] 
**page** | **Integer** |  | [optional] 


