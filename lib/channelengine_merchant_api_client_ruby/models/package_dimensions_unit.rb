=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class PackageDimensionsUnit
    CM = "CM".freeze
    INCH = "INCH".freeze

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
      constantValues = PackageDimensionsUnit.constants.select { |c| PackageDimensionsUnit::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PackageDimensionsUnit" if constantValues.empty?
      value
    end
  end
end
