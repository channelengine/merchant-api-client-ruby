=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.10.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class ListedProductChannelStatus
    NONE = "NONE".freeze
    PUBLISHED = "PUBLISHED".freeze
    NOT_PUBLISHED = "NOT_PUBLISHED".freeze
    UNKNOWN = "UNKNOWN".freeze
    UNDER_REVIEW = "UNDER_REVIEW".freeze
    INVALID_ON_CREATE = "INVALID_ON_CREATE".freeze

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
      constantValues = ListedProductChannelStatus.constants.select { |c| ListedProductChannelStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ListedProductChannelStatus" if constantValues.empty?
      value
    end
  end
end
