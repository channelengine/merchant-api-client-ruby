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
  class MerchantReturnResponse
    # The unique order reference used by the Merchant.
    attr_accessor :merchant_order_no

    # The unique order reference used by the Channel.
    attr_accessor :channel_order_no

    # The id of the channel.
    attr_accessor :channel_id

    # The id of the Global Channel.
    attr_accessor :global_channel_id

    # The name of the Global Channel.
    attr_accessor :global_channel_name

    attr_accessor :lines

    # The date at which the return was created in ChannelEngine.
    attr_accessor :created_at

    # The date at which the return was last modified in ChannelEngine.
    attr_accessor :updated_at

    # The unique return reference used by the Merchant, will be empty in case of a channel or unacknowledged return.
    attr_accessor :merchant_return_no

    # The unique return reference used by the Channel, will be empty in case of a merchant return.
    attr_accessor :channel_return_no

    attr_accessor :status

    # Date of acknowledgement
    attr_accessor :acknowledged_date

    # The unique return reference used by ChannelEngine.
    attr_accessor :id

    attr_accessor :reason

    # Optional. Comment of customer on the (reason of) the return.
    attr_accessor :customer_comment

    # Optional. Comment of merchant on the return.
    attr_accessor :merchant_comment

    # Refund amount incl. VAT.
    attr_accessor :refund_incl_vat

    # Refund amount excl. VAT.
    attr_accessor :refund_excl_vat

    # The date at which the return was originally created in the source system (if available).
    attr_accessor :return_date

    # Extra data on the return. Each item must have an unqiue key
    attr_accessor :extra_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_order_no' => :'MerchantOrderNo',
        :'channel_order_no' => :'ChannelOrderNo',
        :'channel_id' => :'ChannelId',
        :'global_channel_id' => :'GlobalChannelId',
        :'global_channel_name' => :'GlobalChannelName',
        :'lines' => :'Lines',
        :'created_at' => :'CreatedAt',
        :'updated_at' => :'UpdatedAt',
        :'merchant_return_no' => :'MerchantReturnNo',
        :'channel_return_no' => :'ChannelReturnNo',
        :'status' => :'Status',
        :'acknowledged_date' => :'AcknowledgedDate',
        :'id' => :'Id',
        :'reason' => :'Reason',
        :'customer_comment' => :'CustomerComment',
        :'merchant_comment' => :'MerchantComment',
        :'refund_incl_vat' => :'RefundInclVat',
        :'refund_excl_vat' => :'RefundExclVat',
        :'return_date' => :'ReturnDate',
        :'extra_data' => :'ExtraData'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'merchant_order_no' => :'String',
        :'channel_order_no' => :'String',
        :'channel_id' => :'Integer',
        :'global_channel_id' => :'Integer',
        :'global_channel_name' => :'String',
        :'lines' => :'Array<MerchantReturnLineResponse>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'merchant_return_no' => :'String',
        :'channel_return_no' => :'String',
        :'status' => :'ReturnStatus',
        :'acknowledged_date' => :'Time',
        :'id' => :'Integer',
        :'reason' => :'ReturnReason',
        :'customer_comment' => :'String',
        :'merchant_comment' => :'String',
        :'refund_incl_vat' => :'Float',
        :'refund_excl_vat' => :'Float',
        :'return_date' => :'Time',
        :'extra_data' => :'Hash<String, String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'merchant_order_no',
        :'channel_order_no',
        :'channel_id',
        :'global_channel_id',
        :'global_channel_name',
        :'lines',
        :'merchant_return_no',
        :'channel_return_no',
        :'acknowledged_date',
        :'customer_comment',
        :'merchant_comment',
        :'return_date',
        :'extra_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineMerchantApiClient::MerchantReturnResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineMerchantApiClient::MerchantReturnResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'merchant_order_no')
        self.merchant_order_no = attributes[:'merchant_order_no']
      end

      if attributes.key?(:'channel_order_no')
        self.channel_order_no = attributes[:'channel_order_no']
      end

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      end

      if attributes.key?(:'global_channel_id')
        self.global_channel_id = attributes[:'global_channel_id']
      end

      if attributes.key?(:'global_channel_name')
        self.global_channel_name = attributes[:'global_channel_name']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'merchant_return_no')
        self.merchant_return_no = attributes[:'merchant_return_no']
      end

      if attributes.key?(:'channel_return_no')
        self.channel_return_no = attributes[:'channel_return_no']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'acknowledged_date')
        self.acknowledged_date = attributes[:'acknowledged_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.key?(:'customer_comment')
        self.customer_comment = attributes[:'customer_comment']
      end

      if attributes.key?(:'merchant_comment')
        self.merchant_comment = attributes[:'merchant_comment']
      end

      if attributes.key?(:'refund_incl_vat')
        self.refund_incl_vat = attributes[:'refund_incl_vat']
      end

      if attributes.key?(:'refund_excl_vat')
        self.refund_excl_vat = attributes[:'refund_excl_vat']
      end

      if attributes.key?(:'return_date')
        self.return_date = attributes[:'return_date']
      end

      if attributes.key?(:'extra_data')
        if (value = attributes[:'extra_data']).is_a?(Hash)
          self.extra_data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customer_comment.nil? && @customer_comment.to_s.length > 4001
        invalid_properties.push('invalid value for "customer_comment", the character length must be smaller than or equal to 4001.')
      end

      if !@customer_comment.nil? && @customer_comment.to_s.length < 0
        invalid_properties.push('invalid value for "customer_comment", the character length must be great than or equal to 0.')
      end

      if !@merchant_comment.nil? && @merchant_comment.to_s.length > 4001
        invalid_properties.push('invalid value for "merchant_comment", the character length must be smaller than or equal to 4001.')
      end

      if !@merchant_comment.nil? && @merchant_comment.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_comment", the character length must be great than or equal to 0.')
      end

      if !@refund_incl_vat.nil? && @refund_incl_vat < 0
        invalid_properties.push('invalid value for "refund_incl_vat", must be greater than or equal to 0.')
      end

      if !@refund_excl_vat.nil? && @refund_excl_vat < 0
        invalid_properties.push('invalid value for "refund_excl_vat", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer_comment.nil? && @customer_comment.to_s.length > 4001
      return false if !@customer_comment.nil? && @customer_comment.to_s.length < 0
      return false if !@merchant_comment.nil? && @merchant_comment.to_s.length > 4001
      return false if !@merchant_comment.nil? && @merchant_comment.to_s.length < 0
      return false if !@refund_incl_vat.nil? && @refund_incl_vat < 0
      return false if !@refund_excl_vat.nil? && @refund_excl_vat < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_comment Value to be assigned
    def customer_comment=(customer_comment)
      if !customer_comment.nil? && customer_comment.to_s.length > 4001
        fail ArgumentError, 'invalid value for "customer_comment", the character length must be smaller than or equal to 4001.'
      end

      if !customer_comment.nil? && customer_comment.to_s.length < 0
        fail ArgumentError, 'invalid value for "customer_comment", the character length must be great than or equal to 0.'
      end

      @customer_comment = customer_comment
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_comment Value to be assigned
    def merchant_comment=(merchant_comment)
      if !merchant_comment.nil? && merchant_comment.to_s.length > 4001
        fail ArgumentError, 'invalid value for "merchant_comment", the character length must be smaller than or equal to 4001.'
      end

      if !merchant_comment.nil? && merchant_comment.to_s.length < 0
        fail ArgumentError, 'invalid value for "merchant_comment", the character length must be great than or equal to 0.'
      end

      @merchant_comment = merchant_comment
    end

    # Custom attribute writer method with validation
    # @param [Object] refund_incl_vat Value to be assigned
    def refund_incl_vat=(refund_incl_vat)
      if !refund_incl_vat.nil? && refund_incl_vat < 0
        fail ArgumentError, 'invalid value for "refund_incl_vat", must be greater than or equal to 0.'
      end

      @refund_incl_vat = refund_incl_vat
    end

    # Custom attribute writer method with validation
    # @param [Object] refund_excl_vat Value to be assigned
    def refund_excl_vat=(refund_excl_vat)
      if !refund_excl_vat.nil? && refund_excl_vat < 0
        fail ArgumentError, 'invalid value for "refund_excl_vat", must be greater than or equal to 0.'
      end

      @refund_excl_vat = refund_excl_vat
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_order_no == o.merchant_order_no &&
          channel_order_no == o.channel_order_no &&
          channel_id == o.channel_id &&
          global_channel_id == o.global_channel_id &&
          global_channel_name == o.global_channel_name &&
          lines == o.lines &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          merchant_return_no == o.merchant_return_no &&
          channel_return_no == o.channel_return_no &&
          status == o.status &&
          acknowledged_date == o.acknowledged_date &&
          id == o.id &&
          reason == o.reason &&
          customer_comment == o.customer_comment &&
          merchant_comment == o.merchant_comment &&
          refund_incl_vat == o.refund_incl_vat &&
          refund_excl_vat == o.refund_excl_vat &&
          return_date == o.return_date &&
          extra_data == o.extra_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [merchant_order_no, channel_order_no, channel_id, global_channel_id, global_channel_name, lines, created_at, updated_at, merchant_return_no, channel_return_no, status, acknowledged_date, id, reason, customer_comment, merchant_comment, refund_incl_vat, refund_excl_vat, return_date, extra_data].hash
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
