# ChannelEngineApiClient::MerchantOrderResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The unique identifier used by ChannelEngine. This identifier does  not have to be saved. It should only be used in a call to acknowledge the order. | [optional] 
**channel_name** | **String** |  | [optional] 
**channel_order_support** | **String** |  | [optional] 
**channel_order_no** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**lines** | [**Array&lt;MerchantOrderLineResponse&gt;**](MerchantOrderLineResponse.md) |  | [optional] 
**phone** | **String** |  | [optional] 
**email** | **String** |  | 
**company_registration_no** | **String** |  | [optional] 
**vat_no** | **String** |  | [optional] 
**payment_method** | **String** |  | 
**shipping_costs_incl_vat** | **Float** | The shipping fee including VAT  (in the tenant&#39;s base currency calculated using the exchange rate at the time of ordering). | 
**currency_code** | **String** |  | 
**order_date** | **DateTime** |  | 
**channel_customer_no** | **String** |  | [optional] 
**billing_address** | [**EntitiesAddressModels**](EntitiesAddressModels.md) |  | 
**shipping_address** | [**EntitiesAddressModels**](EntitiesAddressModels.md) |  | 
**extra_data** | **Hash&lt;String, String&gt;** |  | [optional] 


