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
  class MerchantAddressResponse
    # The first address line, use this field if address validation is disabled in ChannelEngine.
    attr_accessor :line1

    # The second address line, use this field if address validation is disabled in ChannelEngine.
    attr_accessor :line2

    # The third address line, use this field if address validation is disabled in ChannelEngine.
    attr_accessor :line3

    attr_accessor :gender

    # Optional. Company addressed too.
    attr_accessor :company_name

    # The first name of the customer.
    attr_accessor :first_name

    # The last name of the customer (includes the surname prefix [tussenvoegsel] like 'de', 'van', 'du').
    attr_accessor :last_name

    # The name of the street (without house number information)  This field might be empty if address validation is disabled in ChannelEngine.
    attr_accessor :street_name

    # The house number  This field might be empty if address validation is disabled in ChannelEngine.
    attr_accessor :house_nr

    # Optional. Addition to the house number  If the address is: Groenhazengracht 2c, the address will be:  StreetName: Groenhazengracht  HouseNo: 2  HouseNrAddition: c  This field might be empty if address validation is disabled in ChannelEngine.
    attr_accessor :house_nr_addition

    # The zip or postal code.
    attr_accessor :zip_code

    # The name of the city.
    attr_accessor :city

    # Optional. State/province/region.
    attr_accessor :region

    # For example: NL, BE, FR.
    attr_accessor :country_iso

    # Optional. The address as a single string: use in case the address lines are entered  as single lines and later parsed into street, house number and house number addition.
    attr_accessor :original

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'line1' => :'Line1',
        :'line2' => :'Line2',
        :'line3' => :'Line3',
        :'gender' => :'Gender',
        :'company_name' => :'CompanyName',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'street_name' => :'StreetName',
        :'house_nr' => :'HouseNr',
        :'house_nr_addition' => :'HouseNrAddition',
        :'zip_code' => :'ZipCode',
        :'city' => :'City',
        :'region' => :'Region',
        :'country_iso' => :'CountryIso',
        :'original' => :'Original'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'line1' => :'String',
        :'line2' => :'String',
        :'line3' => :'String',
        :'gender' => :'Gender',
        :'company_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'street_name' => :'String',
        :'house_nr' => :'String',
        :'house_nr_addition' => :'String',
        :'zip_code' => :'String',
        :'city' => :'String',
        :'region' => :'String',
        :'country_iso' => :'String',
        :'original' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'line1',
        :'line2',
        :'line3',
        :'company_name',
        :'first_name',
        :'last_name',
        :'street_name',
        :'house_nr',
        :'house_nr_addition',
        :'zip_code',
        :'city',
        :'region',
        :'country_iso',
        :'original'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineMerchantApiClient::MerchantAddressResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineMerchantApiClient::MerchantAddressResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'line1')
        self.line1 = attributes[:'line1']
      end

      if attributes.key?(:'line2')
        self.line2 = attributes[:'line2']
      end

      if attributes.key?(:'line3')
        self.line3 = attributes[:'line3']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'street_name')
        self.street_name = attributes[:'street_name']
      end

      if attributes.key?(:'house_nr')
        self.house_nr = attributes[:'house_nr']
      end

      if attributes.key?(:'house_nr_addition')
        self.house_nr_addition = attributes[:'house_nr_addition']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'country_iso')
        self.country_iso = attributes[:'country_iso']
      end

      if attributes.key?(:'original')
        self.original = attributes[:'original']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@company_name.nil? && @company_name.to_s.length > 50
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 50.')
      end

      if !@company_name.nil? && @company_name.to_s.length < 0
        invalid_properties.push('invalid value for "company_name", the character length must be great than or equal to 0.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 50
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 50.')
      end

      if !@first_name.nil? && @first_name.to_s.length < 0
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 0.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 50
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 50.')
      end

      if !@last_name.nil? && @last_name.to_s.length < 0
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 0.')
      end

      if !@street_name.nil? && @street_name.to_s.length > 50
        invalid_properties.push('invalid value for "street_name", the character length must be smaller than or equal to 50.')
      end

      if !@street_name.nil? && @street_name.to_s.length < 0
        invalid_properties.push('invalid value for "street_name", the character length must be great than or equal to 0.')
      end

      if !@house_nr.nil? && @house_nr.to_s.length > 50
        invalid_properties.push('invalid value for "house_nr", the character length must be smaller than or equal to 50.')
      end

      if !@house_nr.nil? && @house_nr.to_s.length < 0
        invalid_properties.push('invalid value for "house_nr", the character length must be great than or equal to 0.')
      end

      if !@house_nr_addition.nil? && @house_nr_addition.to_s.length > 50
        invalid_properties.push('invalid value for "house_nr_addition", the character length must be smaller than or equal to 50.')
      end

      if !@house_nr_addition.nil? && @house_nr_addition.to_s.length < 0
        invalid_properties.push('invalid value for "house_nr_addition", the character length must be great than or equal to 0.')
      end

      if !@city.nil? && @city.to_s.length > 50
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 50.')
      end

      if !@city.nil? && @city.to_s.length < 0
        invalid_properties.push('invalid value for "city", the character length must be great than or equal to 0.')
      end

      if !@region.nil? && @region.to_s.length > 50
        invalid_properties.push('invalid value for "region", the character length must be smaller than or equal to 50.')
      end

      if !@region.nil? && @region.to_s.length < 0
        invalid_properties.push('invalid value for "region", the character length must be great than or equal to 0.')
      end

      if !@country_iso.nil? && @country_iso.to_s.length > 2
        invalid_properties.push('invalid value for "country_iso", the character length must be smaller than or equal to 2.')
      end

      if !@country_iso.nil? && @country_iso.to_s.length < 0
        invalid_properties.push('invalid value for "country_iso", the character length must be great than or equal to 0.')
      end

      if !@original.nil? && @original.to_s.length > 256
        invalid_properties.push('invalid value for "original", the character length must be smaller than or equal to 256.')
      end

      if !@original.nil? && @original.to_s.length < 0
        invalid_properties.push('invalid value for "original", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@company_name.nil? && @company_name.to_s.length > 50
      return false if !@company_name.nil? && @company_name.to_s.length < 0
      return false if !@first_name.nil? && @first_name.to_s.length > 50
      return false if !@first_name.nil? && @first_name.to_s.length < 0
      return false if !@last_name.nil? && @last_name.to_s.length > 50
      return false if !@last_name.nil? && @last_name.to_s.length < 0
      return false if !@street_name.nil? && @street_name.to_s.length > 50
      return false if !@street_name.nil? && @street_name.to_s.length < 0
      return false if !@house_nr.nil? && @house_nr.to_s.length > 50
      return false if !@house_nr.nil? && @house_nr.to_s.length < 0
      return false if !@house_nr_addition.nil? && @house_nr_addition.to_s.length > 50
      return false if !@house_nr_addition.nil? && @house_nr_addition.to_s.length < 0
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length < 0
      return false if !@region.nil? && @region.to_s.length > 50
      return false if !@region.nil? && @region.to_s.length < 0
      return false if !@country_iso.nil? && @country_iso.to_s.length > 2
      return false if !@country_iso.nil? && @country_iso.to_s.length < 0
      return false if !@original.nil? && @original.to_s.length > 256
      return false if !@original.nil? && @original.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if !company_name.nil? && company_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "company_name", the character length must be smaller than or equal to 50.'
      end

      if !company_name.nil? && company_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "company_name", the character length must be great than or equal to 0.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 50.'
      end

      if !first_name.nil? && first_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 0.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 50.'
      end

      if !last_name.nil? && last_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 0.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] street_name Value to be assigned
    def street_name=(street_name)
      if !street_name.nil? && street_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "street_name", the character length must be smaller than or equal to 50.'
      end

      if !street_name.nil? && street_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "street_name", the character length must be great than or equal to 0.'
      end

      @street_name = street_name
    end

    # Custom attribute writer method with validation
    # @param [Object] house_nr Value to be assigned
    def house_nr=(house_nr)
      if !house_nr.nil? && house_nr.to_s.length > 50
        fail ArgumentError, 'invalid value for "house_nr", the character length must be smaller than or equal to 50.'
      end

      if !house_nr.nil? && house_nr.to_s.length < 0
        fail ArgumentError, 'invalid value for "house_nr", the character length must be great than or equal to 0.'
      end

      @house_nr = house_nr
    end

    # Custom attribute writer method with validation
    # @param [Object] house_nr_addition Value to be assigned
    def house_nr_addition=(house_nr_addition)
      if !house_nr_addition.nil? && house_nr_addition.to_s.length > 50
        fail ArgumentError, 'invalid value for "house_nr_addition", the character length must be smaller than or equal to 50.'
      end

      if !house_nr_addition.nil? && house_nr_addition.to_s.length < 0
        fail ArgumentError, 'invalid value for "house_nr_addition", the character length must be great than or equal to 0.'
      end

      @house_nr_addition = house_nr_addition
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 50
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 50.'
      end

      if !city.nil? && city.to_s.length < 0
        fail ArgumentError, 'invalid value for "city", the character length must be great than or equal to 0.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] region Value to be assigned
    def region=(region)
      if !region.nil? && region.to_s.length > 50
        fail ArgumentError, 'invalid value for "region", the character length must be smaller than or equal to 50.'
      end

      if !region.nil? && region.to_s.length < 0
        fail ArgumentError, 'invalid value for "region", the character length must be great than or equal to 0.'
      end

      @region = region
    end

    # Custom attribute writer method with validation
    # @param [Object] country_iso Value to be assigned
    def country_iso=(country_iso)
      if !country_iso.nil? && country_iso.to_s.length > 2
        fail ArgumentError, 'invalid value for "country_iso", the character length must be smaller than or equal to 2.'
      end

      if !country_iso.nil? && country_iso.to_s.length < 0
        fail ArgumentError, 'invalid value for "country_iso", the character length must be great than or equal to 0.'
      end

      @country_iso = country_iso
    end

    # Custom attribute writer method with validation
    # @param [Object] original Value to be assigned
    def original=(original)
      if !original.nil? && original.to_s.length > 256
        fail ArgumentError, 'invalid value for "original", the character length must be smaller than or equal to 256.'
      end

      if !original.nil? && original.to_s.length < 0
        fail ArgumentError, 'invalid value for "original", the character length must be great than or equal to 0.'
      end

      @original = original
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          line1 == o.line1 &&
          line2 == o.line2 &&
          line3 == o.line3 &&
          gender == o.gender &&
          company_name == o.company_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          street_name == o.street_name &&
          house_nr == o.house_nr &&
          house_nr_addition == o.house_nr_addition &&
          zip_code == o.zip_code &&
          city == o.city &&
          region == o.region &&
          country_iso == o.country_iso &&
          original == o.original
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [line1, line2, line3, gender, company_name, first_name, last_name, street_name, house_nr, house_nr_addition, zip_code, city, region, country_iso, original].hash
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
