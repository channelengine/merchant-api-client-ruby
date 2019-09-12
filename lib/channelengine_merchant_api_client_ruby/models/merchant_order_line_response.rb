=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient
  class MerchantOrderLineResponse
    # The status of the order
    attr_accessor :status

    # Is the order fulfilled by the marketplace (amazon: FBA, bol: LVB, etc.)?
    attr_accessor :is_fulfillment_by_marketplace

    # The unique product reference used by the Merchant (sku)
    attr_accessor :merchant_product_no

    # Either the GTIN (EAN, ISBN, UPC etc) provided by the channel, or the the GTIN belonging to the MerchantProductNo in ChannelEngine
    attr_accessor :gtin

    # The total amount of VAT charged over the value of a single unit of the ordered product  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :unit_vat

    # The total value of the order line (quantity * unit price) including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :line_total_incl_vat

    # The total amount of VAT charged over the total value of the order line (quantity * unit price)  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :line_vat

    # The value of a single unit of the ordered product including VAT  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_unit_price_incl_vat

    # The total amount of VAT charged over the value of a single unit of the ordered product  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_unit_vat

    # The total value of the order line (quantity * unit price) including VAT  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_line_total_incl_vat

    # The total amount of VAT charged over the total value of the order line (quantity * unit price)  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_line_vat

    # If the product is ordered part of a bundle, this field contains the MerchantProductNo of  the product bundle.
    attr_accessor :bundle_product_merchant_product_no

    # The unique order reference used by the channel
    attr_accessor :channel_product_no

    # The number of items of the product
    attr_accessor :quantity

    # The number of items for which cancellation was requested by the customer.  Some channels allow a customer to cancel an order until it has been shipped.  When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.  Use this field to check whether it is still possible to cancel the order. If this is the case, submit a cancellation to ChannelEngine
    attr_accessor :cancellation_requested_quantity

    # The value of a single unit of the ordered product including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :unit_price_incl_vat

    # A fixed fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable.
    attr_accessor :fee_fixed

    # A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable.
    attr_accessor :fee_rate

    # The condition of the product, this can be used to indicate that a product is a second-hand product
    attr_accessor :condition

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'Status',
        :'is_fulfillment_by_marketplace' => :'IsFulfillmentByMarketplace',
        :'merchant_product_no' => :'MerchantProductNo',
        :'gtin' => :'Gtin',
        :'unit_vat' => :'UnitVat',
        :'line_total_incl_vat' => :'LineTotalInclVat',
        :'line_vat' => :'LineVat',
        :'original_unit_price_incl_vat' => :'OriginalUnitPriceInclVat',
        :'original_unit_vat' => :'OriginalUnitVat',
        :'original_line_total_incl_vat' => :'OriginalLineTotalInclVat',
        :'original_line_vat' => :'OriginalLineVat',
        :'bundle_product_merchant_product_no' => :'BundleProductMerchantProductNo',
        :'channel_product_no' => :'ChannelProductNo',
        :'quantity' => :'Quantity',
        :'cancellation_requested_quantity' => :'CancellationRequestedQuantity',
        :'unit_price_incl_vat' => :'UnitPriceInclVat',
        :'fee_fixed' => :'FeeFixed',
        :'fee_rate' => :'FeeRate',
        :'condition' => :'Condition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'status' => :'String',
        :'is_fulfillment_by_marketplace' => :'BOOLEAN',
        :'merchant_product_no' => :'String',
        :'gtin' => :'String',
        :'unit_vat' => :'Float',
        :'line_total_incl_vat' => :'Float',
        :'line_vat' => :'Float',
        :'original_unit_price_incl_vat' => :'Float',
        :'original_unit_vat' => :'Float',
        :'original_line_total_incl_vat' => :'Float',
        :'original_line_vat' => :'Float',
        :'bundle_product_merchant_product_no' => :'String',
        :'channel_product_no' => :'String',
        :'quantity' => :'Integer',
        :'cancellation_requested_quantity' => :'Integer',
        :'unit_price_incl_vat' => :'Float',
        :'fee_fixed' => :'Float',
        :'fee_rate' => :'Float',
        :'condition' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'IsFulfillmentByMarketplace')
        self.is_fulfillment_by_marketplace = attributes[:'IsFulfillmentByMarketplace']
      end

      if attributes.has_key?(:'MerchantProductNo')
        self.merchant_product_no = attributes[:'MerchantProductNo']
      end

      if attributes.has_key?(:'Gtin')
        self.gtin = attributes[:'Gtin']
      end

      if attributes.has_key?(:'UnitVat')
        self.unit_vat = attributes[:'UnitVat']
      end

      if attributes.has_key?(:'LineTotalInclVat')
        self.line_total_incl_vat = attributes[:'LineTotalInclVat']
      end

      if attributes.has_key?(:'LineVat')
        self.line_vat = attributes[:'LineVat']
      end

      if attributes.has_key?(:'OriginalUnitPriceInclVat')
        self.original_unit_price_incl_vat = attributes[:'OriginalUnitPriceInclVat']
      end

      if attributes.has_key?(:'OriginalUnitVat')
        self.original_unit_vat = attributes[:'OriginalUnitVat']
      end

      if attributes.has_key?(:'OriginalLineTotalInclVat')
        self.original_line_total_incl_vat = attributes[:'OriginalLineTotalInclVat']
      end

      if attributes.has_key?(:'OriginalLineVat')
        self.original_line_vat = attributes[:'OriginalLineVat']
      end

      if attributes.has_key?(:'BundleProductMerchantProductNo')
        self.bundle_product_merchant_product_no = attributes[:'BundleProductMerchantProductNo']
      end

      if attributes.has_key?(:'ChannelProductNo')
        self.channel_product_no = attributes[:'ChannelProductNo']
      end

      if attributes.has_key?(:'Quantity')
        self.quantity = attributes[:'Quantity']
      end

      if attributes.has_key?(:'CancellationRequestedQuantity')
        self.cancellation_requested_quantity = attributes[:'CancellationRequestedQuantity']
      end

      if attributes.has_key?(:'UnitPriceInclVat')
        self.unit_price_incl_vat = attributes[:'UnitPriceInclVat']
      end

      if attributes.has_key?(:'FeeFixed')
        self.fee_fixed = attributes[:'FeeFixed']
      end

      if attributes.has_key?(:'FeeRate')
        self.fee_rate = attributes[:'FeeRate']
      end

      if attributes.has_key?(:'Condition')
        self.condition = attributes[:'Condition']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel_product_no.nil?
        invalid_properties.push('invalid value for "channel_product_no", channel_product_no cannot be nil.')
      end

      if @channel_product_no.to_s.length > 50
        invalid_properties.push('invalid value for "channel_product_no", the character length must be smaller than or equal to 50.')
      end

      if @channel_product_no.to_s.length < 0
        invalid_properties.push('invalid value for "channel_product_no", the character length must be great than or equal to 0.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @unit_price_incl_vat.nil?
        invalid_properties.push('invalid value for "unit_price_incl_vat", unit_price_incl_vat cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ['IN_PROGRESS', 'SHIPPED', 'IN_BACKORDER', 'MANCO', 'IN_COMBI', 'CLOSED', 'NEW', 'RETURNED', 'REQUIRES_CORRECTION'])
      return false unless status_validator.valid?(@status)
      return false if @channel_product_no.nil?
      return false if @channel_product_no.to_s.length > 50
      return false if @channel_product_no.to_s.length < 0
      return false if @quantity.nil?
      return false if @unit_price_incl_vat.nil?
      condition_validator = EnumAttributeValidator.new('String', ['NEW', 'NEW_REFURBISHED', 'USED_AS_NEW', 'USED_GOOD', 'USED_REASONABLE', 'USED_MEDIOCRE', 'UNKNOWN', 'USED_VERY_GOOD'])
      return false unless condition_validator.valid?(@condition)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['IN_PROGRESS', 'SHIPPED', 'IN_BACKORDER', 'MANCO', 'IN_COMBI', 'CLOSED', 'NEW', 'RETURNED', 'REQUIRES_CORRECTION'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_product_no Value to be assigned
    def channel_product_no=(channel_product_no)
      if channel_product_no.nil?
        fail ArgumentError, 'channel_product_no cannot be nil'
      end

      if channel_product_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "channel_product_no", the character length must be smaller than or equal to 50.'
      end

      if channel_product_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "channel_product_no", the character length must be great than or equal to 0.'
      end

      @channel_product_no = channel_product_no
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] condition Object to be assigned
    def condition=(condition)
      validator = EnumAttributeValidator.new('String', ['NEW', 'NEW_REFURBISHED', 'USED_AS_NEW', 'USED_GOOD', 'USED_REASONABLE', 'USED_MEDIOCRE', 'UNKNOWN', 'USED_VERY_GOOD'])
      unless validator.valid?(condition)
        fail ArgumentError, 'invalid value for "condition", must be one of #{validator.allowable_values}.'
      end
      @condition = condition
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          is_fulfillment_by_marketplace == o.is_fulfillment_by_marketplace &&
          merchant_product_no == o.merchant_product_no &&
          gtin == o.gtin &&
          unit_vat == o.unit_vat &&
          line_total_incl_vat == o.line_total_incl_vat &&
          line_vat == o.line_vat &&
          original_unit_price_incl_vat == o.original_unit_price_incl_vat &&
          original_unit_vat == o.original_unit_vat &&
          original_line_total_incl_vat == o.original_line_total_incl_vat &&
          original_line_vat == o.original_line_vat &&
          bundle_product_merchant_product_no == o.bundle_product_merchant_product_no &&
          channel_product_no == o.channel_product_no &&
          quantity == o.quantity &&
          cancellation_requested_quantity == o.cancellation_requested_quantity &&
          unit_price_incl_vat == o.unit_price_incl_vat &&
          fee_fixed == o.fee_fixed &&
          fee_rate == o.fee_rate &&
          condition == o.condition
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [status, is_fulfillment_by_marketplace, merchant_product_no, gtin, unit_vat, line_total_incl_vat, line_vat, original_unit_price_incl_vat, original_unit_vat, original_line_total_incl_vat, original_line_vat, bundle_product_merchant_product_no, channel_product_no, quantity, cancellation_requested_quantity, unit_price_incl_vat, fee_fixed, fee_rate, condition].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = ChannelEngineMerchantApiClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
