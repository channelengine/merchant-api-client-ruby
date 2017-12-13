# ChannelEngineApiClient::MerchantOrderLineResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | [optional] 
**is_fulfillment_by_marketplace** | **BOOLEAN** |  | [optional] 
**merchant_product_no** | **String** |  | [optional] 
**channel_product_no** | **String** |  | 
**quantity** | **Integer** |  | 
**unit_price_incl_vat** | **Float** | The value of a single unit of the ordered product including VAT  (in the tenant&#39;s base currency calculated using the exchange rate at the time of ordering). | 
**fee_fixed** | **Float** | A fixed fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. | [optional] 
**fee_rate** | **Float** | A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. | [optional] 
**condition** | **String** | The condition of the product, this can be used to indicate that a product is a second-hand product | [optional] 


