=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.8

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class OrderSupport
    NONE = "NONE".freeze
    ORDERS = "ORDERS".freeze
    SPLIT_ORDERS = "SPLIT_ORDERS".freeze
    SPLIT_ORDER_LINES = "SPLIT_ORDER_LINES".freeze

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
      constantValues = OrderSupport.constants.select { |c| OrderSupport::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OrderSupport" if constantValues.empty?
      value
    end
  end
end
