# ChannelEngineApiClient::ChannelOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel_order_no** | **String** | The unique order reference used by the Channel | 
**lines** | [**Array&lt;ChannelOrderLineRequest&gt;**](ChannelOrderLineRequest.md) | The order lines | 
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


