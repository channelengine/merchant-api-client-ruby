=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

# Common files
require 'channelengine_merchant_api_client_ruby/api_client'
require 'channelengine_merchant_api_client_ruby/api_error'
require 'channelengine_merchant_api_client_ruby/version'
require 'channelengine_merchant_api_client_ruby/configuration'

# Models
require 'channelengine_merchant_api_client_ruby/models/advance_settings_response'
require 'channelengine_merchant_api_client_ruby/models/api_response'
require 'channelengine_merchant_api_client_ruby/models/channel_carrier_collection_method_api'
require 'channelengine_merchant_api_client_ruby/models/channel_carrier_recommendation_api'
require 'channelengine_merchant_api_client_ruby/models/channel_channel_response'
require 'channelengine_merchant_api_client_ruby/models/channel_global_channel_response'
require 'channelengine_merchant_api_client_ruby/models/channel_listed_product_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_channel_global_channel_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_channel_listed_product_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_notification_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_offer_get_stock_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_order_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_product_bundle_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_product_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_product_with_buy_box_price'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_return_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_shipment_label_carrier_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_single_order_return_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_stock_location_response'
require 'channelengine_merchant_api_client_ruby/models/collection_of_merchant_webhook_response'
require 'channelengine_merchant_api_client_ruby/models/condition'
require 'channelengine_merchant_api_client_ruby/models/creator_filter'
require 'channelengine_merchant_api_client_ruby/models/extra_data_type'
require 'channelengine_merchant_api_client_ruby/models/fulfillment_type'
require 'channelengine_merchant_api_client_ruby/models/gender'
require 'channelengine_merchant_api_client_ruby/models/listed_product_channel_status'
require 'channelengine_merchant_api_client_ruby/models/listed_product_export_status'
require 'channelengine_merchant_api_client_ruby/models/manco_reason'
require 'channelengine_merchant_api_client_ruby/models/merchant_address_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_cancellation_line_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_cancellation_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_channel_label_shipment_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_notification_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_offer_get_stock_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_order_acknowledgement_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_order_comment_update_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_order_line_extra_data_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_order_line_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_order_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_bundle_part_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_bundle_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_extra_data_item_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_extra_data_item_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_product_with_buy_box_price'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_line_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_line_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_line_update_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_return_update_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_settings_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_label_carrier_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_label_carrier_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_line_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_package_dimensions_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_package_weight_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_shipment_tracking_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_single_order_return_line_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_single_order_return_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_stock_location_response'
require 'channelengine_merchant_api_client_ruby/models/merchant_stock_price_update_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_webhook_request'
require 'channelengine_merchant_api_client_ruby/models/merchant_webhook_response'
require 'channelengine_merchant_api_client_ruby/models/notification_type'
require 'channelengine_merchant_api_client_ruby/models/operation'
require 'channelengine_merchant_api_client_ruby/models/order_status_view'
require 'channelengine_merchant_api_client_ruby/models/order_support'
require 'channelengine_merchant_api_client_ruby/models/package_dimensions_unit'
require 'channelengine_merchant_api_client_ruby/models/package_weight_unit'
require 'channelengine_merchant_api_client_ruby/models/patch_merchant_product_dto'
require 'channelengine_merchant_api_client_ruby/models/product_creation_result'
require 'channelengine_merchant_api_client_ruby/models/product_message'
require 'channelengine_merchant_api_client_ruby/models/return_reason'
require 'channelengine_merchant_api_client_ruby/models/return_status'
require 'channelengine_merchant_api_client_ruby/models/settings_response'
require 'channelengine_merchant_api_client_ruby/models/shipment_line_status'
require 'channelengine_merchant_api_client_ruby/models/shipment_settings_response'
require 'channelengine_merchant_api_client_ruby/models/single_of_dictionary_of_string_and_list_of_string'
require 'channelengine_merchant_api_client_ruby/models/single_of_merchant_product_response'
require 'channelengine_merchant_api_client_ruby/models/single_of_merchant_settings_response'
require 'channelengine_merchant_api_client_ruby/models/single_of_product_creation_result'
require 'channelengine_merchant_api_client_ruby/models/vat_rate_type'
require 'channelengine_merchant_api_client_ruby/models/vat_settings_response'
require 'channelengine_merchant_api_client_ruby/models/webhook_event_type'

# APIs
require 'channelengine_merchant_api_client_ruby/api/cancellation_api'
require 'channelengine_merchant_api_client_ruby/api/channels_api'
require 'channelengine_merchant_api_client_ruby/api/competition_price_api'
require 'channelengine_merchant_api_client_ruby/api/listed_products_api'
require 'channelengine_merchant_api_client_ruby/api/notification_api'
require 'channelengine_merchant_api_client_ruby/api/offer_api'
require 'channelengine_merchant_api_client_ruby/api/order_api'
require 'channelengine_merchant_api_client_ruby/api/product_api'
require 'channelengine_merchant_api_client_ruby/api/product_bundle_api'
require 'channelengine_merchant_api_client_ruby/api/return_api'
require 'channelengine_merchant_api_client_ruby/api/settings_api'
require 'channelengine_merchant_api_client_ruby/api/shipment_api'
require 'channelengine_merchant_api_client_ruby/api/stock_location_api'
require 'channelengine_merchant_api_client_ruby/api/webhook_api'

module ChannelEngineMerchantApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   ChannelEngineMerchantApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
