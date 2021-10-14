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
  class MerchantReturnLineUpdateRequest
    # The unique product reference used by the Merchant (sku).
    attr_accessor :merchant_product_no

    # The amount of items that have been accepted.
    attr_accessor :accepted_quantity

    # The amount of items that have been rejected.
    attr_accessor :rejected_quantity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_product_no' => :'MerchantProductNo',
        :'accepted_quantity' => :'AcceptedQuantity',
        :'rejected_quantity' => :'RejectedQuantity'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'merchant_product_no' => :'String',
        :'accepted_quantity' => :'Integer',
        :'rejected_quantity' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineMerchantApiClient::MerchantReturnLineUpdateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineMerchantApiClient::MerchantReturnLineUpdateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'merchant_product_no')
        self.merchant_product_no = attributes[:'merchant_product_no']
      end

      if attributes.key?(:'accepted_quantity')
        self.accepted_quantity = attributes[:'accepted_quantity']
      end

      if attributes.key?(:'rejected_quantity')
        self.rejected_quantity = attributes[:'rejected_quantity']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @merchant_product_no.nil?
        invalid_properties.push('invalid value for "merchant_product_no", merchant_product_no cannot be nil.')
      end

      if @merchant_product_no.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be smaller than or equal to 64.')
      end

      if @merchant_product_no.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be great than or equal to 0.')
      end

      if @accepted_quantity.nil?
        invalid_properties.push('invalid value for "accepted_quantity", accepted_quantity cannot be nil.')
      end

      if @accepted_quantity < 0
        invalid_properties.push('invalid value for "accepted_quantity", must be greater than or equal to 0.')
      end

      if @rejected_quantity.nil?
        invalid_properties.push('invalid value for "rejected_quantity", rejected_quantity cannot be nil.')
      end

      if @rejected_quantity < 0
        invalid_properties.push('invalid value for "rejected_quantity", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @merchant_product_no.nil?
      return false if @merchant_product_no.to_s.length > 64
      return false if @merchant_product_no.to_s.length < 0
      return false if @accepted_quantity.nil?
      return false if @accepted_quantity < 0
      return false if @rejected_quantity.nil?
      return false if @rejected_quantity < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_product_no Value to be assigned
    def merchant_product_no=(merchant_product_no)
      if merchant_product_no.nil?
        fail ArgumentError, 'merchant_product_no cannot be nil'
      end

      if merchant_product_no.to_s.length > 64
        fail ArgumentError, 'invalid value for "merchant_product_no", the character length must be smaller than or equal to 64.'
      end

      if merchant_product_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "merchant_product_no", the character length must be great than or equal to 0.'
      end

      @merchant_product_no = merchant_product_no
    end

    # Custom attribute writer method with validation
    # @param [Object] accepted_quantity Value to be assigned
    def accepted_quantity=(accepted_quantity)
      if accepted_quantity.nil?
        fail ArgumentError, 'accepted_quantity cannot be nil'
      end

      if accepted_quantity < 0
        fail ArgumentError, 'invalid value for "accepted_quantity", must be greater than or equal to 0.'
      end

      @accepted_quantity = accepted_quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] rejected_quantity Value to be assigned
    def rejected_quantity=(rejected_quantity)
      if rejected_quantity.nil?
        fail ArgumentError, 'rejected_quantity cannot be nil'
      end

      if rejected_quantity < 0
        fail ArgumentError, 'invalid value for "rejected_quantity", must be greater than or equal to 0.'
      end

      @rejected_quantity = rejected_quantity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_product_no == o.merchant_product_no &&
          accepted_quantity == o.accepted_quantity &&
          rejected_quantity == o.rejected_quantity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [merchant_product_no, accepted_quantity, rejected_quantity].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ChannelEngineMerchantApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
