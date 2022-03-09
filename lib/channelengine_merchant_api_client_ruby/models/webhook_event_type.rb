=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class WebhookEventType
    ORDERS_CREATE = "ORDERS_CREATE".freeze
    PRODUCTS_CHANGE = "PRODUCTS_CHANGE".freeze
    RETURNS_CHANGE = "RETURNS_CHANGE".freeze
    SHIPMENTS_CHANGE = "SHIPMENTS_CHANGE".freeze
    NOTIFICATIONS_CREATE = "NOTIFICATIONS_CREATE".freeze
    BUNDLE_PRODUCTS_CHANGE = "BUNDLE_PRODUCTS_CHANGE".freeze
    ORDERS_CHANGE = "ORDERS_CHANGE".freeze

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
      constantValues = WebhookEventType.constants.select { |c| WebhookEventType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #WebhookEventType" if constantValues.empty?
      value
    end
  end
end
