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
  class MerchantProductResponse
    # Is the product active for the Merchant?.
    attr_accessor :is_active

    attr_accessor :extra_data

    # The name of the product.
    attr_accessor :name

    # A description of the product. Can contain these HTML tags:  div, span, pre, p, br, hr, hgroup, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, strong, em, b, i, u, img, a, abbr, address, blockquote, area, audio, video, caption, table, tbody, td, tfoot, th, thead, tr.
    attr_accessor :description

    # The brand of the product.
    attr_accessor :brand

    # Optional. The size of the product (variant). E.g. fashion size (S-XL, 46-56, etc), width of the watch, etc..
    attr_accessor :size

    # Optional. The color of the product (variant).
    attr_accessor :color

    # The EAN of GTIN of the product.
    attr_accessor :ean

    # The unique product reference used by the manufacturer/vendor of the product.
    attr_accessor :manufacturer_product_number

    # A unique identifier of the product. (sku).
    attr_accessor :merchant_product_no

    # The number of items in stock.
    attr_accessor :stock

    # Price, including VAT.
    attr_accessor :price

    # Manufacturer's suggested retail price.
    attr_accessor :msrp

    # Optional. The purchase price of the product. Useful for repricing.
    attr_accessor :purchase_price

    attr_accessor :vat_rate_type

    # Shipping cost of the product.
    attr_accessor :shipping_cost

    # A textual representation of the shippingtime.  For example, in Dutch: 'Op werkdagen voor 22:00 uur besteld, morgen in huis'.
    attr_accessor :shipping_time

    # A URL pointing to the merchant's webpage  which displays this product.
    attr_accessor :url

    # A URL at which an image of this product  can be found.
    attr_accessor :image_url

    # Url to an additional image of product (1).
    attr_accessor :extra_image_url1

    # Url to an additional image of product (2).
    attr_accessor :extra_image_url2

    # Url to an additional image of product (3).
    attr_accessor :extra_image_url3

    # Url to an additional image of product (4).
    attr_accessor :extra_image_url4

    # Url to an additional image of product (5).
    attr_accessor :extra_image_url5

    # Url to an additional image of product (6).
    attr_accessor :extra_image_url6

    # Url to an additional image of product (7).
    attr_accessor :extra_image_url7

    # Url to an additional image of product (8).
    attr_accessor :extra_image_url8

    # Url to an additional image of product (9).
    attr_accessor :extra_image_url9

    # The category to which this product belongs.  Please supply this field in the following format:  'maincategory > category > subcategory'  For example:  'vehicles > bikes > mountainbike'.
    attr_accessor :category_trail

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_active' => :'IsActive',
        :'extra_data' => :'ExtraData',
        :'name' => :'Name',
        :'description' => :'Description',
        :'brand' => :'Brand',
        :'size' => :'Size',
        :'color' => :'Color',
        :'ean' => :'Ean',
        :'manufacturer_product_number' => :'ManufacturerProductNumber',
        :'merchant_product_no' => :'MerchantProductNo',
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
        :'category_trail' => :'CategoryTrail'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_active' => :'Boolean',
        :'extra_data' => :'Array<MerchantProductExtraDataItemResponse>',
        :'name' => :'String',
        :'description' => :'String',
        :'brand' => :'String',
        :'size' => :'String',
        :'color' => :'String',
        :'ean' => :'String',
        :'manufacturer_product_number' => :'String',
        :'merchant_product_no' => :'String',
        :'stock' => :'Integer',
        :'price' => :'Float',
        :'msrp' => :'Float',
        :'purchase_price' => :'Float',
        :'vat_rate_type' => :'VatRateType',
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
        :'category_trail' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'extra_data',
        :'name',
        :'description',
        :'brand',
        :'size',
        :'color',
        :'ean',
        :'manufacturer_product_number',
        :'msrp',
        :'purchase_price',
        :'shipping_cost',
        :'shipping_time',
        :'url',
        :'image_url',
        :'extra_image_url1',
        :'extra_image_url2',
        :'extra_image_url3',
        :'extra_image_url4',
        :'extra_image_url5',
        :'extra_image_url6',
        :'extra_image_url7',
        :'extra_image_url8',
        :'extra_image_url9',
        :'category_trail'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineMerchantApiClient::MerchantProductResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineMerchantApiClient::MerchantProductResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'extra_data')
        if (value = attributes[:'extra_data']).is_a?(Array)
          self.extra_data = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'ean')
        self.ean = attributes[:'ean']
      end

      if attributes.key?(:'manufacturer_product_number')
        self.manufacturer_product_number = attributes[:'manufacturer_product_number']
      end

      if attributes.key?(:'merchant_product_no')
        self.merchant_product_no = attributes[:'merchant_product_no']
      end

      if attributes.key?(:'stock')
        self.stock = attributes[:'stock']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'msrp')
        self.msrp = attributes[:'msrp']
      end

      if attributes.key?(:'purchase_price')
        self.purchase_price = attributes[:'purchase_price']
      end

      if attributes.key?(:'vat_rate_type')
        self.vat_rate_type = attributes[:'vat_rate_type']
      end

      if attributes.key?(:'shipping_cost')
        self.shipping_cost = attributes[:'shipping_cost']
      end

      if attributes.key?(:'shipping_time')
        self.shipping_time = attributes[:'shipping_time']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'extra_image_url1')
        self.extra_image_url1 = attributes[:'extra_image_url1']
      end

      if attributes.key?(:'extra_image_url2')
        self.extra_image_url2 = attributes[:'extra_image_url2']
      end

      if attributes.key?(:'extra_image_url3')
        self.extra_image_url3 = attributes[:'extra_image_url3']
      end

      if attributes.key?(:'extra_image_url4')
        self.extra_image_url4 = attributes[:'extra_image_url4']
      end

      if attributes.key?(:'extra_image_url5')
        self.extra_image_url5 = attributes[:'extra_image_url5']
      end

      if attributes.key?(:'extra_image_url6')
        self.extra_image_url6 = attributes[:'extra_image_url6']
      end

      if attributes.key?(:'extra_image_url7')
        self.extra_image_url7 = attributes[:'extra_image_url7']
      end

      if attributes.key?(:'extra_image_url8')
        self.extra_image_url8 = attributes[:'extra_image_url8']
      end

      if attributes.key?(:'extra_image_url9')
        self.extra_image_url9 = attributes[:'extra_image_url9']
      end

      if attributes.key?(:'category_trail')
        self.category_trail = attributes[:'category_trail']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 256
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 256.')
      end

      if !@name.nil? && @name.to_s.length < 0
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 0.')
      end

      if !@brand.nil? && @brand.to_s.length > 256
        invalid_properties.push('invalid value for "brand", the character length must be smaller than or equal to 256.')
      end

      if !@brand.nil? && @brand.to_s.length < 0
        invalid_properties.push('invalid value for "brand", the character length must be great than or equal to 0.')
      end

      if !@size.nil? && @size.to_s.length > 64
        invalid_properties.push('invalid value for "size", the character length must be smaller than or equal to 64.')
      end

      if !@size.nil? && @size.to_s.length < 0
        invalid_properties.push('invalid value for "size", the character length must be great than or equal to 0.')
      end

      if !@color.nil? && @color.to_s.length > 64
        invalid_properties.push('invalid value for "color", the character length must be smaller than or equal to 64.')
      end

      if !@color.nil? && @color.to_s.length < 0
        invalid_properties.push('invalid value for "color", the character length must be great than or equal to 0.')
      end

      if !@ean.nil? && @ean.to_s.length > 64
        invalid_properties.push('invalid value for "ean", the character length must be smaller than or equal to 64.')
      end

      if !@ean.nil? && @ean.to_s.length < 0
        invalid_properties.push('invalid value for "ean", the character length must be great than or equal to 0.')
      end

      if !@manufacturer_product_number.nil? && @manufacturer_product_number.to_s.length > 64
        invalid_properties.push('invalid value for "manufacturer_product_number", the character length must be smaller than or equal to 64.')
      end

      if !@manufacturer_product_number.nil? && @manufacturer_product_number.to_s.length < 0
        invalid_properties.push('invalid value for "manufacturer_product_number", the character length must be great than or equal to 0.')
      end

      if @merchant_product_no.nil?
        invalid_properties.push('invalid value for "merchant_product_no", merchant_product_no cannot be nil.')
      end

      if @merchant_product_no.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be smaller than or equal to 64.')
      end

      if @merchant_product_no.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be great than or equal to 0.')
      end

      if !@stock.nil? && @stock < 0
        invalid_properties.push('invalid value for "stock", must be greater than or equal to 0.')
      end

      if !@price.nil? && @price < 0
        invalid_properties.push('invalid value for "price", must be greater than or equal to 0.')
      end

      if !@shipping_time.nil? && @shipping_time.to_s.length > 128
        invalid_properties.push('invalid value for "shipping_time", the character length must be smaller than or equal to 128.')
      end

      if !@shipping_time.nil? && @shipping_time.to_s.length < 0
        invalid_properties.push('invalid value for "shipping_time", the character length must be great than or equal to 0.')
      end

      if !@url.nil? && @url.to_s.length > 512
        invalid_properties.push('invalid value for "url", the character length must be smaller than or equal to 512.')
      end

      if !@url.nil? && @url.to_s.length < 0
        invalid_properties.push('invalid value for "url", the character length must be great than or equal to 0.')
      end

      if !@image_url.nil? && @image_url.to_s.length > 512
        invalid_properties.push('invalid value for "image_url", the character length must be smaller than or equal to 512.')
      end

      if !@image_url.nil? && @image_url.to_s.length < 0
        invalid_properties.push('invalid value for "image_url", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url1.nil? && @extra_image_url1.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url1", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url1.nil? && @extra_image_url1.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url1", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url2.nil? && @extra_image_url2.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url2", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url2.nil? && @extra_image_url2.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url2", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url3.nil? && @extra_image_url3.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url3", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url3.nil? && @extra_image_url3.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url3", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url4.nil? && @extra_image_url4.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url4", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url4.nil? && @extra_image_url4.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url4", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url5.nil? && @extra_image_url5.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url5", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url5.nil? && @extra_image_url5.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url5", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url6.nil? && @extra_image_url6.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url6", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url6.nil? && @extra_image_url6.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url6", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url7.nil? && @extra_image_url7.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url7", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url7.nil? && @extra_image_url7.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url7", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url8.nil? && @extra_image_url8.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url8", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url8.nil? && @extra_image_url8.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url8", the character length must be great than or equal to 0.')
      end

      if !@extra_image_url9.nil? && @extra_image_url9.to_s.length > 512
        invalid_properties.push('invalid value for "extra_image_url9", the character length must be smaller than or equal to 512.')
      end

      if !@extra_image_url9.nil? && @extra_image_url9.to_s.length < 0
        invalid_properties.push('invalid value for "extra_image_url9", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 256
      return false if !@name.nil? && @name.to_s.length < 0
      return false if !@brand.nil? && @brand.to_s.length > 256
      return false if !@brand.nil? && @brand.to_s.length < 0
      return false if !@size.nil? && @size.to_s.length > 64
      return false if !@size.nil? && @size.to_s.length < 0
      return false if !@color.nil? && @color.to_s.length > 64
      return false if !@color.nil? && @color.to_s.length < 0
      return false if !@ean.nil? && @ean.to_s.length > 64
      return false if !@ean.nil? && @ean.to_s.length < 0
      return false if !@manufacturer_product_number.nil? && @manufacturer_product_number.to_s.length > 64
      return false if !@manufacturer_product_number.nil? && @manufacturer_product_number.to_s.length < 0
      return false if @merchant_product_no.nil?
      return false if @merchant_product_no.to_s.length > 64
      return false if @merchant_product_no.to_s.length < 0
      return false if !@stock.nil? && @stock < 0
      return false if !@price.nil? && @price < 0
      return false if !@shipping_time.nil? && @shipping_time.to_s.length > 128
      return false if !@shipping_time.nil? && @shipping_time.to_s.length < 0
      return false if !@url.nil? && @url.to_s.length > 512
      return false if !@url.nil? && @url.to_s.length < 0
      return false if !@image_url.nil? && @image_url.to_s.length > 512
      return false if !@image_url.nil? && @image_url.to_s.length < 0
      return false if !@extra_image_url1.nil? && @extra_image_url1.to_s.length > 512
      return false if !@extra_image_url1.nil? && @extra_image_url1.to_s.length < 0
      return false if !@extra_image_url2.nil? && @extra_image_url2.to_s.length > 512
      return false if !@extra_image_url2.nil? && @extra_image_url2.to_s.length < 0
      return false if !@extra_image_url3.nil? && @extra_image_url3.to_s.length > 512
      return false if !@extra_image_url3.nil? && @extra_image_url3.to_s.length < 0
      return false if !@extra_image_url4.nil? && @extra_image_url4.to_s.length > 512
      return false if !@extra_image_url4.nil? && @extra_image_url4.to_s.length < 0
      return false if !@extra_image_url5.nil? && @extra_image_url5.to_s.length > 512
      return false if !@extra_image_url5.nil? && @extra_image_url5.to_s.length < 0
      return false if !@extra_image_url6.nil? && @extra_image_url6.to_s.length > 512
      return false if !@extra_image_url6.nil? && @extra_image_url6.to_s.length < 0
      return false if !@extra_image_url7.nil? && @extra_image_url7.to_s.length > 512
      return false if !@extra_image_url7.nil? && @extra_image_url7.to_s.length < 0
      return false if !@extra_image_url8.nil? && @extra_image_url8.to_s.length > 512
      return false if !@extra_image_url8.nil? && @extra_image_url8.to_s.length < 0
      return false if !@extra_image_url9.nil? && @extra_image_url9.to_s.length > 512
      return false if !@extra_image_url9.nil? && @extra_image_url9.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 256
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 256.'
      end

      if !name.nil? && name.to_s.length < 0
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 0.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] brand Value to be assigned
    def brand=(brand)
      if !brand.nil? && brand.to_s.length > 256
        fail ArgumentError, 'invalid value for "brand", the character length must be smaller than or equal to 256.'
      end

      if !brand.nil? && brand.to_s.length < 0
        fail ArgumentError, 'invalid value for "brand", the character length must be great than or equal to 0.'
      end

      @brand = brand
    end

    # Custom attribute writer method with validation
    # @param [Object] size Value to be assigned
    def size=(size)
      if !size.nil? && size.to_s.length > 64
        fail ArgumentError, 'invalid value for "size", the character length must be smaller than or equal to 64.'
      end

      if !size.nil? && size.to_s.length < 0
        fail ArgumentError, 'invalid value for "size", the character length must be great than or equal to 0.'
      end

      @size = size
    end

    # Custom attribute writer method with validation
    # @param [Object] color Value to be assigned
    def color=(color)
      if !color.nil? && color.to_s.length > 64
        fail ArgumentError, 'invalid value for "color", the character length must be smaller than or equal to 64.'
      end

      if !color.nil? && color.to_s.length < 0
        fail ArgumentError, 'invalid value for "color", the character length must be great than or equal to 0.'
      end

      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] ean Value to be assigned
    def ean=(ean)
      if !ean.nil? && ean.to_s.length > 64
        fail ArgumentError, 'invalid value for "ean", the character length must be smaller than or equal to 64.'
      end

      if !ean.nil? && ean.to_s.length < 0
        fail ArgumentError, 'invalid value for "ean", the character length must be great than or equal to 0.'
      end

      @ean = ean
    end

    # Custom attribute writer method with validation
    # @param [Object] manufacturer_product_number Value to be assigned
    def manufacturer_product_number=(manufacturer_product_number)
      if !manufacturer_product_number.nil? && manufacturer_product_number.to_s.length > 64
        fail ArgumentError, 'invalid value for "manufacturer_product_number", the character length must be smaller than or equal to 64.'
      end

      if !manufacturer_product_number.nil? && manufacturer_product_number.to_s.length < 0
        fail ArgumentError, 'invalid value for "manufacturer_product_number", the character length must be great than or equal to 0.'
      end

      @manufacturer_product_number = manufacturer_product_number
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
    # @param [Object] stock Value to be assigned
    def stock=(stock)
      if !stock.nil? && stock < 0
        fail ArgumentError, 'invalid value for "stock", must be greater than or equal to 0.'
      end

      @stock = stock
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price)
      if !price.nil? && price < 0
        fail ArgumentError, 'invalid value for "price", must be greater than or equal to 0.'
      end

      @price = price
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_time Value to be assigned
    def shipping_time=(shipping_time)
      if !shipping_time.nil? && shipping_time.to_s.length > 128
        fail ArgumentError, 'invalid value for "shipping_time", the character length must be smaller than or equal to 128.'
      end

      if !shipping_time.nil? && shipping_time.to_s.length < 0
        fail ArgumentError, 'invalid value for "shipping_time", the character length must be great than or equal to 0.'
      end

      @shipping_time = shipping_time
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if !url.nil? && url.to_s.length > 512
        fail ArgumentError, 'invalid value for "url", the character length must be smaller than or equal to 512.'
      end

      if !url.nil? && url.to_s.length < 0
        fail ArgumentError, 'invalid value for "url", the character length must be great than or equal to 0.'
      end

      @url = url
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url Value to be assigned
    def image_url=(image_url)
      if !image_url.nil? && image_url.to_s.length > 512
        fail ArgumentError, 'invalid value for "image_url", the character length must be smaller than or equal to 512.'
      end

      if !image_url.nil? && image_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "image_url", the character length must be great than or equal to 0.'
      end

      @image_url = image_url
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url1 Value to be assigned
    def extra_image_url1=(extra_image_url1)
      if !extra_image_url1.nil? && extra_image_url1.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url1", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url1.nil? && extra_image_url1.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url1", the character length must be great than or equal to 0.'
      end

      @extra_image_url1 = extra_image_url1
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url2 Value to be assigned
    def extra_image_url2=(extra_image_url2)
      if !extra_image_url2.nil? && extra_image_url2.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url2", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url2.nil? && extra_image_url2.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url2", the character length must be great than or equal to 0.'
      end

      @extra_image_url2 = extra_image_url2
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url3 Value to be assigned
    def extra_image_url3=(extra_image_url3)
      if !extra_image_url3.nil? && extra_image_url3.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url3", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url3.nil? && extra_image_url3.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url3", the character length must be great than or equal to 0.'
      end

      @extra_image_url3 = extra_image_url3
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url4 Value to be assigned
    def extra_image_url4=(extra_image_url4)
      if !extra_image_url4.nil? && extra_image_url4.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url4", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url4.nil? && extra_image_url4.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url4", the character length must be great than or equal to 0.'
      end

      @extra_image_url4 = extra_image_url4
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url5 Value to be assigned
    def extra_image_url5=(extra_image_url5)
      if !extra_image_url5.nil? && extra_image_url5.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url5", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url5.nil? && extra_image_url5.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url5", the character length must be great than or equal to 0.'
      end

      @extra_image_url5 = extra_image_url5
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url6 Value to be assigned
    def extra_image_url6=(extra_image_url6)
      if !extra_image_url6.nil? && extra_image_url6.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url6", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url6.nil? && extra_image_url6.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url6", the character length must be great than or equal to 0.'
      end

      @extra_image_url6 = extra_image_url6
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url7 Value to be assigned
    def extra_image_url7=(extra_image_url7)
      if !extra_image_url7.nil? && extra_image_url7.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url7", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url7.nil? && extra_image_url7.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url7", the character length must be great than or equal to 0.'
      end

      @extra_image_url7 = extra_image_url7
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url8 Value to be assigned
    def extra_image_url8=(extra_image_url8)
      if !extra_image_url8.nil? && extra_image_url8.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url8", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url8.nil? && extra_image_url8.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url8", the character length must be great than or equal to 0.'
      end

      @extra_image_url8 = extra_image_url8
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_image_url9 Value to be assigned
    def extra_image_url9=(extra_image_url9)
      if !extra_image_url9.nil? && extra_image_url9.to_s.length > 512
        fail ArgumentError, 'invalid value for "extra_image_url9", the character length must be smaller than or equal to 512.'
      end

      if !extra_image_url9.nil? && extra_image_url9.to_s.length < 0
        fail ArgumentError, 'invalid value for "extra_image_url9", the character length must be great than or equal to 0.'
      end

      @extra_image_url9 = extra_image_url9
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_active == o.is_active &&
          extra_data == o.extra_data &&
          name == o.name &&
          description == o.description &&
          brand == o.brand &&
          size == o.size &&
          color == o.color &&
          ean == o.ean &&
          manufacturer_product_number == o.manufacturer_product_number &&
          merchant_product_no == o.merchant_product_no &&
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
          category_trail == o.category_trail
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_active, extra_data, name, description, brand, size, color, ean, manufacturer_product_number, merchant_product_no, stock, price, msrp, purchase_price, vat_rate_type, shipping_cost, shipping_time, url, image_url, extra_image_url1, extra_image_url2, extra_image_url3, extra_image_url4, extra_image_url5, extra_image_url6, extra_image_url7, extra_image_url8, extra_image_url9, category_trail].hash
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
