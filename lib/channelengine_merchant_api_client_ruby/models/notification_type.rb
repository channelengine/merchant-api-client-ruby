=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient
  class NotificationType
    CHANNEL_ORDER_ANONYMIZED_BY_REQUEST = "CHANNEL_ORDER_ANONYMIZED_BY_REQUEST".freeze
    CHANNEL_ORDER_ANONYMIZED_AUTOMATICALLY = "CHANNEL_ORDER_ANONYMIZED_AUTOMATICALLY".freeze
    CHANNEL_ORDER_CANCELLATION_REQUEST_NEW = "CHANNEL_ORDER_CANCELLATION_REQUEST_NEW".freeze
    CHANNEL_ORDER_CORRECTION_NEEDED = "CHANNEL_ORDER_CORRECTION_NEEDED".freeze
    CHANNEL_ORDER_DUPLICATE_LINE = "CHANNEL_ORDER_DUPLICATE_LINE".freeze
    CHANNEL_ORDER_INVOICE_SEND_FAILED = "CHANNEL_ORDER_INVOICE_SEND_FAILED".freeze
    CHANNEL_ORDER_IMPORT_FAILED = "CHANNEL_ORDER_IMPORT_FAILED".freeze
    CHANNEL_ORDER_NEW = "CHANNEL_ORDER_NEW".freeze
    CHANNEL_ORDER_OVERDUE = "CHANNEL_ORDER_OVERDUE".freeze
    CHANNEL_PRODUCT_DATA_EXPORT_FAILED = "CHANNEL_PRODUCT_DATA_EXPORT_FAILED".freeze
    CHANNEL_PRODUCT_DATA_IMPORT_FAILED = "CHANNEL_PRODUCT_DATA_IMPORT_FAILED".freeze
    CHANNEL_RETURN_EXPORT_FAILED = "CHANNEL_RETURN_EXPORT_FAILED".freeze
    CHANNEL_RETURN_IMPORT_FAILED = "CHANNEL_RETURN_IMPORT_FAILED".freeze
    CHANNEL_RETURN_NEW = "CHANNEL_RETURN_NEW".freeze
    CHANNEL_RETURN_OVERDUE = "CHANNEL_RETURN_OVERDUE".freeze
    CHANNEL_REFUND_EXPORT_FAILED = "CHANNEL_REFUND_EXPORT_FAILED".freeze
    CHANNEL_SHIPMENT_IMPORT_FAILED = "CHANNEL_SHIPMENT_IMPORT_FAILED".freeze
    CHANNEL_SHIPMENT_IMPORT_STATUS_FAILED = "CHANNEL_SHIPMENT_IMPORT_STATUS_FAILED".freeze
    CHANNEL_SHIPMENT_EXPORT_FAILED = "CHANNEL_SHIPMENT_EXPORT_FAILED".freeze
    CHANNEL_SHIPMENT_IMPORT_MISSING_LINE_FAILED = "CHANNEL_SHIPMENT_IMPORT_MISSING_LINE_FAILED".freeze
    CHANNEL_FULFILLMENT_SHIPMENT_IMPORT_STATUS_FAILED = "CHANNEL_FULFILLMENT_SHIPMENT_IMPORT_STATUS_FAILED".freeze
    CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_FAILED = "CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_FAILED".freeze
    CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_SUCCEEDED = "CHANNEL_FULFILLMENT_SHIPMENT_EXPORT_SUCCEEDED".freeze
    CHANNEL_FULFILLMENT_SHIPMENT_LINE_FOR_CLOSED_ORDER = "CHANNEL_FULFILLMENT_SHIPMENT_LINE_FOR_CLOSED_ORDER".freeze
    CHANNELENGINE_SUPPORT_NOTIFICATION = "CHANNELENGINE_SUPPORT_NOTIFICATION".freeze
    CHANNELENGINE_WEBHOOK_RQUEST_FAILED = "CHANNELENGINE_WEBHOOK_RQUEST_FAILED".freeze
    FEED_NO_PRODUCTS_FAILED = "FEED_NO_PRODUCTS_FAILED".freeze
    FEED_IMPORT_FAILED = "FEED_IMPORT_FAILED".freeze
    GLOBAL_MESSAGE = "GLOBAL_MESSAGE".freeze
    MERCHANT_ORDER_EXPORT_FAILED = "MERCHANT_ORDER_EXPORT_FAILED".freeze
    PLUGIN_INVALID_SETTING = "PLUGIN_INVALID_SETTING".freeze
    PLUGIN_DEACTIVATED = "PLUGIN_DEACTIVATED".freeze
    PRODUCT_BUNDLE_IMPORT_FAILED = "PRODUCT_BUNDLE_IMPORT_FAILED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = NotificationType.constants.select { |c| NotificationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #NotificationType" if constantValues.empty?
      value
    end
  end
end