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
  class MerchantChannelLabelShipmentRequest
    attr_accessor :dimensions

    attr_accessor :weight

    attr_accessor :channel_method_code

    # The unique shipment reference used by the Merchant.
    attr_accessor :merchant_shipment_no

    # The unique order reference used by the Merchant.
    attr_accessor :merchant_order_no

    # The code of the country from where the package is being shipped.
    attr_accessor :shipped_from_country_code

    attr_accessor :lines

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dimensions' => :'Dimensions',
        :'weight' => :'Weight',
        :'channel_method_code' => :'ChannelMethodCode',
        :'merchant_shipment_no' => :'MerchantShipmentNo',
        :'merchant_order_no' => :'MerchantOrderNo',
        :'shipped_from_country_code' => :'ShippedFromCountryCode',
        :'lines' => :'Lines'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'dimensions' => :'MerchantShipmentPackageDimensionsRequest',
        :'weight' => :'MerchantShipmentPackageWeightRequest',
        :'channel_method_code' => :'String',
        :'merchant_shipment_no' => :'String',
        :'merchant_order_no' => :'String',
        :'shipped_from_country_code' => :'String',
        :'lines' => :'Array<MerchantShipmentLineRequest>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'shipped_from_country_code',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineMerchantApiClient::MerchantChannelLabelShipmentRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineMerchantApiClient::MerchantChannelLabelShipmentRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dimensions')
        self.dimensions = attributes[:'dimensions']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'channel_method_code')
        self.channel_method_code = attributes[:'channel_method_code']
      end

      if attributes.key?(:'merchant_shipment_no')
        self.merchant_shipment_no = attributes[:'merchant_shipment_no']
      end

      if attributes.key?(:'merchant_order_no')
        self.merchant_order_no = attributes[:'merchant_order_no']
      end

      if attributes.key?(:'shipped_from_country_code')
        self.shipped_from_country_code = attributes[:'shipped_from_country_code']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @dimensions.nil?
        invalid_properties.push('invalid value for "dimensions", dimensions cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      if @channel_method_code.nil?
        invalid_properties.push('invalid value for "channel_method_code", channel_method_code cannot be nil.')
      end

      if @merchant_shipment_no.nil?
        invalid_properties.push('invalid value for "merchant_shipment_no", merchant_shipment_no cannot be nil.')
      end

      if @merchant_shipment_no.to_s.length > 250
        invalid_properties.push('invalid value for "merchant_shipment_no", the character length must be smaller than or equal to 250.')
      end

      if @merchant_shipment_no.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_shipment_no", the character length must be great than or equal to 0.')
      end

      if @merchant_order_no.nil?
        invalid_properties.push('invalid value for "merchant_order_no", merchant_order_no cannot be nil.')
      end

      if @merchant_order_no.to_s.length > 50
        invalid_properties.push('invalid value for "merchant_order_no", the character length must be smaller than or equal to 50.')
      end

      if @merchant_order_no.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_order_no", the character length must be great than or equal to 0.')
      end

      if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length > 3
        invalid_properties.push('invalid value for "shipped_from_country_code", the character length must be smaller than or equal to 3.')
      end

      if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length < 0
        invalid_properties.push('invalid value for "shipped_from_country_code", the character length must be great than or equal to 0.')
      end

      if @lines.nil?
        invalid_properties.push('invalid value for "lines", lines cannot be nil.')
      end

      if @lines.length < 1
        invalid_properties.push('invalid value for "lines", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @dimensions.nil?
      return false if @weight.nil?
      return false if @channel_method_code.nil?
      return false if @merchant_shipment_no.nil?
      return false if @merchant_shipment_no.to_s.length > 250
      return false if @merchant_shipment_no.to_s.length < 0
      return false if @merchant_order_no.nil?
      return false if @merchant_order_no.to_s.length > 50
      return false if @merchant_order_no.to_s.length < 0
      return false if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length > 3
      return false if !@shipped_from_country_code.nil? && @shipped_from_country_code.to_s.length < 0
      return false if @lines.nil?
      return false if @lines.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_shipment_no Value to be assigned
    def merchant_shipment_no=(merchant_shipment_no)
      if merchant_shipment_no.nil?
        fail ArgumentError, 'merchant_shipment_no cannot be nil'
      end

      if merchant_shipment_no.to_s.length > 250
        fail ArgumentError, 'invalid value for "merchant_shipment_no", the character length must be smaller than or equal to 250.'
      end

      if merchant_shipment_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "merchant_shipment_no", the character length must be great than or equal to 0.'
      end

      @merchant_shipment_no = merchant_shipment_no
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_order_no Value to be assigned
    def merchant_order_no=(merchant_order_no)
      if merchant_order_no.nil?
        fail ArgumentError, 'merchant_order_no cannot be nil'
      end

      if merchant_order_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "merchant_order_no", the character length must be smaller than or equal to 50.'
      end

      if merchant_order_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "merchant_order_no", the character length must be great than or equal to 0.'
      end

      @merchant_order_no = merchant_order_no
    end

    # Custom attribute writer method with validation
    # @param [Object] shipped_from_country_code Value to be assigned
    def shipped_from_country_code=(shipped_from_country_code)
      if !shipped_from_country_code.nil? && shipped_from_country_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "shipped_from_country_code", the character length must be smaller than or equal to 3.'
      end

      if !shipped_from_country_code.nil? && shipped_from_country_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "shipped_from_country_code", the character length must be great than or equal to 0.'
      end

      @shipped_from_country_code = shipped_from_country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] lines Value to be assigned
    def lines=(lines)
      if lines.nil?
        fail ArgumentError, 'lines cannot be nil'
      end

      if lines.length < 1
        fail ArgumentError, 'invalid value for "lines", number of items must be greater than or equal to 1.'
      end

      @lines = lines
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dimensions == o.dimensions &&
          weight == o.weight &&
          channel_method_code == o.channel_method_code &&
          merchant_shipment_no == o.merchant_shipment_no &&
          merchant_order_no == o.merchant_order_no &&
          shipped_from_country_code == o.shipped_from_country_code &&
          lines == o.lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dimensions, weight, channel_method_code, merchant_shipment_no, merchant_order_no, shipped_from_country_code, lines].hash
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
