=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.11.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module ChannelEngineMerchantApiClient
  class Gender
    MALE = "MALE".freeze
    FEMALE = "FEMALE".freeze
    NOT_APPLICABLE = "NOT_APPLICABLE".freeze

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
      constantValues = Gender.constants.select { |c| Gender::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Gender" if constantValues.empty?
      value
    end
  end
end
