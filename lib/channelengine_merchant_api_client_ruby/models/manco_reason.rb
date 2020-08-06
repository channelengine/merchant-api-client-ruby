=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient
  class MancoReason
    NOT_IN_STOCK = "NOT_IN_STOCK".freeze
    DAMAGED = "DAMAGED".freeze
    INCOMPLETE = "INCOMPLETE".freeze
    CLIENT_CANCELLED = "CLIENT_CANCELLED".freeze
    INVALID_ADDRESS = "INVALID_ADDRESS".freeze
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
      constantValues = MancoReason.constants.select { |c| MancoReason::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #MancoReason" if constantValues.empty?
      value
    end
  end
end