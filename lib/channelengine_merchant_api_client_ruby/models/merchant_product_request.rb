=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.6.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient

  class MerchantProductRequest
    # A unique identifier of the product.
    attr_accessor :merchant_product_no

    # If this product is a different version of another  product (for example, all fields are the same except  size), then this field should contain  the 'MerchantProductNo' of the parent. The parent  should already exist (or be present between the products  in the content of the API call, it does not matter whether   the parent is behind the child in the list).
    attr_accessor :parent_merchant_product_no

    # If this product is a different version of another  product (for example, all fields are the same except  color) and itself is a parent with child products (e.g. of sizes),   then this field should contain the 'MerchantProductNo' of the grandparent. The grandparent  should already exist (or be present between the products  in the content of the API call, it does not matter whether   the grandparent is behind the child in the list).    Use this field in case of three level product hierarchy,   e.g. model - color - size.   This is required for channels like Otto.
    attr_accessor :parent_merchant_product_no2

    attr_accessor :name

    attr_accessor :description

    attr_accessor :brand

    attr_accessor :size

    attr_accessor :color

    attr_accessor :ean

    attr_accessor :manufacturer_product_number

    attr_accessor :stock

    # Price, including VAT.
    attr_accessor :price

    # Manufacturer's suggested retail price
    attr_accessor :msrp

    attr_accessor :purchase_price

    # The type of VAT which applies to this product.  See: http://ec.europa.eu/taxation_customs/taxation/vat/topics/rates_en.htm
    attr_accessor :vat_rate_type

    attr_accessor :shipping_cost

    # A textual representation of the shippingtime.  For example, in Dutch: 'Op werkdagen voor 22:00 uur besteld, morgen in huis'
    attr_accessor :shipping_time

    # A URL pointing to the merchant's webpage  which displays this product.
    attr_accessor :url

    # A URL at which an image of this product  can be found.
    attr_accessor :image_url

    attr_accessor :extra_image_url1

    attr_accessor :extra_image_url2

    attr_accessor :extra_image_url3

    attr_accessor :extra_image_url4

    attr_accessor :extra_image_url5

    attr_accessor :extra_image_url6

    attr_accessor :extra_image_url7

    attr_accessor :extra_image_url8

    attr_accessor :extra_image_url9

    # The category to which this product belongs.  Please supply this field in the following format:  'maincategory &gt; category &gt; subcategory'  For example:  'vehicles &gt; bikes &gt; mountainbike'
    attr_accessor :category_trail

    # An optional list of key-value pairs containing  extra data about this product. This data can be  sent to channels or used for filtering products.
    attr_accessor :extra_data

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
        :'merchant_product_no' => :'MerchantProductNo',
        :'parent_merchant_product_no' => :'ParentMerchantProductNo',
        :'parent_merchant_product_no2' => :'ParentMerchantProductNo2',
        :'name' => :'Name',
        :'description' => :'Description',
        :'brand' => :'Brand',
        :'size' => :'Size',
        :'color' => :'Color',
        :'ean' => :'Ean',
        :'manufacturer_product_number' => :'ManufacturerProductNumber',
        :'stock' => :'Stock',
        :'price' => :'Price',
        :'msrp' => :'MSRP',
        :'purchase_price' => :'PurchasePrice',
        :'vat_rate_type' => :'VatRateType',
        :'shipping_cost' => :'ShippingCost',
        :'shipping_time' => :'ShippingTime',
        :'url' => :'Url',
        :'image_url' => :'ImageUrl',
        :'extra_image_url1' => :'ExtraImageUrl1',
        :'extra_image_url2' => :'ExtraImageUrl2',
        :'extra_image_url3' => :'ExtraImageUrl3',
        :'extra_image_url4' => :'ExtraImageUrl4',
        :'extra_image_url5' => :'ExtraImageUrl5',
        :'extra_image_url6' => :'ExtraImageUrl6',
        :'extra_image_url7' => :'ExtraImageUrl7',
        :'extra_image_url8' => :'ExtraImageUrl8',
        :'extra_image_url9' => :'ExtraImageUrl9',
        :'category_trail' => :'CategoryTrail',
        :'extra_data' => :'ExtraData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_product_no' => :'String',
        :'parent_merchant_product_no' => :'String',
        :'parent_merchant_product_no2' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'brand' => :'String',
        :'size' => :'String',
        :'color' => :'String',
        :'ean' => :'String',
        :'manufacturer_product_number' => :'String',
        :'stock' => :'Integer',
        :'price' => :'Float',
        :'msrp' => :'Float',
        :'purchase_price' => :'Float',
        :'vat_rate_type' => :'String',
        :'shipping_cost' => :'Float',
        :'shipping_time' => :'String',
        :'url' => :'String',
        :'image_url' => :'String',
        :'extra_image_url1' => :'String',
        :'extra_image_url2' => :'String',
        :'extra_image_url3' => :'String',
        :'extra_image_url4' => :'String',
        :'extra_image_url5' => :'String',
        :'extra_image_url6' => :'String',
        :'extra_image_url7' => :'String',
        :'extra_image_url8' => :'String',
        :'extra_image_url9' => :'String',
        :'category_trail' => :'String',
        :'extra_data' => :'Array<ExtraDataItem>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'MerchantProductNo')
        self.merchant_product_no = attributes[:'MerchantProductNo']
      end

      if attributes.has_key?(:'ParentMerchantProductNo')
        self.parent_merchant_product_no = attributes[:'ParentMerchantProductNo']
      end

      if attributes.has_key?(:'ParentMerchantProductNo2')
        self.parent_merchant_product_no2 = attributes[:'ParentMerchantProductNo2']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'Brand')
        self.brand = attributes[:'Brand']
      end

      if attributes.has_key?(:'Size')
        self.size = attributes[:'Size']
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'Ean')
        self.ean = attributes[:'Ean']
      end

      if attributes.has_key?(:'ManufacturerProductNumber')
        self.manufacturer_product_number = attributes[:'ManufacturerProductNumber']
      end

      if attributes.has_key?(:'Stock')
        self.stock = attributes[:'Stock']
      end

      if attributes.has_key?(:'Price')
        self.price = attributes[:'Price']
      end

      if attributes.has_key?(:'MSRP')
        self.msrp = attributes[:'MSRP']
      end

      if attributes.has_key?(:'PurchasePrice')
        self.purchase_price = attributes[:'PurchasePrice']
      end

      if attributes.has_key?(:'VatRateType')
        self.vat_rate_type = attributes[:'VatRateType']
      end

      if attributes.has_key?(:'ShippingCost')
        self.shipping_cost = attributes[:'ShippingCost']
      end

      if attributes.has_key?(:'ShippingTime')
        self.shipping_time = attributes[:'ShippingTime']
      end

      if attributes.has_key?(:'Url')
        self.url = attributes[:'Url']
      end

      if attributes.has_key?(:'ImageUrl')
        self.image_url = attributes[:'ImageUrl']
      end

      if attributes.has_key?(:'ExtraImageUrl1')
        self.extra_image_url1 = attributes[:'ExtraImageUrl1']
      end

      if attributes.has_key?(:'ExtraImageUrl2')
        self.extra_image_url2 = attributes[:'ExtraImageUrl2']
      end

      if attributes.has_key?(:'ExtraImageUrl3')
        self.extra_image_url3 = attributes[:'ExtraImageUrl3']
      end

      if attributes.has_key?(:'ExtraImageUrl4')
        self.extra_image_url4 = attributes[:'ExtraImageUrl4']
      end

      if attributes.has_key?(:'ExtraImageUrl5')
        self.extra_image_url5 = attributes[:'ExtraImageUrl5']
      end

      if attributes.has_key?(:'ExtraImageUrl6')
        self.extra_image_url6 = attributes[:'ExtraImageUrl6']
      end

      if attributes.has_key?(:'ExtraImageUrl7')
        self.extra_image_url7 = attributes[:'ExtraImageUrl7']
      end

      if attributes.has_key?(:'ExtraImageUrl8')
        self.extra_image_url8 = attributes[:'ExtraImageUrl8']
      end

      if attributes.has_key?(:'ExtraImageUrl9')
        self.extra_image_url9 = attributes[:'ExtraImageUrl9']
      end

      if attributes.has_key?(:'CategoryTrail')
        self.category_trail = attributes[:'CategoryTrail']
      end

      if attributes.has_key?(:'ExtraData')
        if (value = attributes[:'ExtraData']).is_a?(Array)
          self.extra_data = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      vat_rate_type_validator = EnumAttributeValidator.new('String', ["STANDARD", "REDUCED", "SUPER_REDUCED"])
      return false unless vat_rate_type_validator.valid?(@vat_rate_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vat_rate_type Object to be assigned
    def vat_rate_type=(vat_rate_type)
      validator = EnumAttributeValidator.new('String', ["STANDARD", "REDUCED", "SUPER_REDUCED"])
      unless validator.valid?(vat_rate_type)
        fail ArgumentError, "invalid value for 'vat_rate_type', must be one of #{validator.allowable_values}."
      end
      @vat_rate_type = vat_rate_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_product_no == o.merchant_product_no &&
          parent_merchant_product_no == o.parent_merchant_product_no &&
          parent_merchant_product_no2 == o.parent_merchant_product_no2 &&
          name == o.name &&
          description == o.description &&
          brand == o.brand &&
          size == o.size &&
          color == o.color &&
          ean == o.ean &&
          manufacturer_product_number == o.manufacturer_product_number &&
          stock == o.stock &&
          price == o.price &&
          msrp == o.msrp &&
          purchase_price == o.purchase_price &&
          vat_rate_type == o.vat_rate_type &&
          shipping_cost == o.shipping_cost &&
          shipping_time == o.shipping_time &&
          url == o.url &&
          image_url == o.image_url &&
          extra_image_url1 == o.extra_image_url1 &&
          extra_image_url2 == o.extra_image_url2 &&
          extra_image_url3 == o.extra_image_url3 &&
          extra_image_url4 == o.extra_image_url4 &&
          extra_image_url5 == o.extra_image_url5 &&
          extra_image_url6 == o.extra_image_url6 &&
          extra_image_url7 == o.extra_image_url7 &&
          extra_image_url8 == o.extra_image_url8 &&
          extra_image_url9 == o.extra_image_url9 &&
          category_trail == o.category_trail &&
          extra_data == o.extra_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_product_no, parent_merchant_product_no, parent_merchant_product_no2, name, description, brand, size, color, ean, manufacturer_product_number, stock, price, msrp, purchase_price, vat_rate_type, shipping_cost, shipping_time, url, image_url, extra_image_url1, extra_image_url2, extra_image_url3, extra_image_url4, extra_image_url5, extra_image_url6, extra_image_url7, extra_image_url8, extra_image_url9, category_trail, extra_data].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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
