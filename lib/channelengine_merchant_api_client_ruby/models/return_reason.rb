=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.13.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class ReturnReason
    PRODUCT_DEFECT = "PRODUCT_DEFECT".freeze
    PRODUCT_UNSATISFACTORY = "PRODUCT_UNSATISFACTORY".freeze
    WRONG_PRODUCT = "WRONG_PRODUCT".freeze
    TOO_MANY_PRODUCTS = "TOO_MANY_PRODUCTS".freeze
    REFUSED = "REFUSED".freeze
    REFUSED_DAMAGED = "REFUSED_DAMAGED".freeze
    WRONG_ADDRESS = "WRONG_ADDRESS".freeze
    NOT_COLLECTED = "NOT_COLLECTED".freeze
    WRONG_SIZE = "WRONG_SIZE".freeze
    OTHER = "OTHER".freeze

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
      constantValues = ReturnReason.constants.select { |c| ReturnReason::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ReturnReason" if constantValues.empty?
      value
    end
  end
end
