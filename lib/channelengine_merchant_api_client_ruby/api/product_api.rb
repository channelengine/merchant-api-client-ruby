=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineMerchantApiClient
  class ProductApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Upsert Products
    # Upsert (update or create) products. The parent serves as the 'base' product of the children.  For example, the children could be different sizes or colors of the parent product.  For channels where every size and color are different products this does not make any difference  (the children will just be sent separately, while ignoring the parent).  But there are channels where the parent and the children need to be sent together, for example  when there is one product with a list of sizes. In this case all the product information is retrieved  from the parent product while the size list is generated from the children.    Note that the parent itself is a 'blueprint' of the child products and we do our best to make sure it  does not end up on the marketplaces itself. Only the children can be purchased.    It's not possible to nest parent and children more than one level (A parent can have many children,  but any child cannot itself also have children).    The supplied MerchantProductNo needs to be unique.
    # @param products 
    # @param [Hash] opts the optional parameters
    # @return [SingleOfProductCreationResult]
    def product_create(products, opts = {})
      data, _status_code, _headers = product_create_with_http_info(products, opts)
      return data
    end

    # Upsert Products
    # Upsert (update or create) products. The parent serves as the &#39;base&#39; product of the children.  For example, the children could be different sizes or colors of the parent product.  For channels where every size and color are different products this does not make any difference  (the children will just be sent separately, while ignoring the parent).  But there are channels where the parent and the children need to be sent together, for example  when there is one product with a list of sizes. In this case all the product information is retrieved  from the parent product while the size list is generated from the children.    Note that the parent itself is a &#39;blueprint&#39; of the child products and we do our best to make sure it  does not end up on the marketplaces itself. Only the children can be purchased.    It&#39;s not possible to nest parent and children more than one level (A parent can have many children,  but any child cannot itself also have children).    The supplied MerchantProductNo needs to be unique.
    # @param products 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleOfProductCreationResult, Fixnum, Hash)>] SingleOfProductCreationResult data, response status code and response headers
    def product_create_with_http_info(products, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_create ..."
      end
      # verify the required parameter 'products' is set
      if @api_client.config.client_side_validation && products.nil?
        fail ArgumentError, "Missing the required parameter 'products' when calling ProductApi.product_create"
      end
      # resource path
      local_var_path = "/v2/products"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(products)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SingleOfProductCreationResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Product
    # Delete a product based on the merchant reference.  Note that we do not really delete a product, as the product  might still be referenced by orders etc. Therefore, the references  used for this product cannot be reused. We do however deactivate the product  which means that it will not be sent to channels.
    # @param merchant_product_no 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def product_delete(merchant_product_no, opts = {})
      data, _status_code, _headers = product_delete_with_http_info(merchant_product_no, opts)
      return data
    end

    # Delete Product
    # Delete a product based on the merchant reference.  Note that we do not really delete a product, as the product  might still be referenced by orders etc. Therefore, the references  used for this product cannot be reused. We do however deactivate the product  which means that it will not be sent to channels.
    # @param merchant_product_no 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Fixnum, Hash)>] ApiResponse data, response status code and response headers
    def product_delete_with_http_info(merchant_product_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_delete ..."
      end
      # verify the required parameter 'merchant_product_no' is set
      if @api_client.config.client_side_validation && merchant_product_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_product_no' when calling ProductApi.product_delete"
      end
      # resource path
      local_var_path = "/v2/products/{merchantProductNo}".sub('{' + 'merchantProductNo' + '}', merchant_product_no.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Products
    # Retrieve all products
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters.
    # @option opts [Array<String>] :ean_list Search products by submitting a list of EAN&#39;s
    # @option opts [Array<String>] :merchant_product_no_list Search products by submitting a list of MerchantProductNo&#39;s
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantProductResponse]
    def product_get_by_filter(opts = {})
      data, _status_code, _headers = product_get_by_filter_with_http_info(opts)
      return data
    end

    # Get Products
    # Retrieve all products
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters.
    # @option opts [Array<String>] :ean_list Search products by submitting a list of EAN&#39;s
    # @option opts [Array<String>] :merchant_product_no_list Search products by submitting a list of MerchantProductNo&#39;s
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantProductResponse, Fixnum, Hash)>] CollectionOfMerchantProductResponse data, response status code and response headers
    def product_get_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_get_by_filter ..."
      end
      # resource path
      local_var_path = "/v2/products"

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'eanList'] = @api_client.build_collection_param(opts[:'ean_list'], :multi) if !opts[:'ean_list'].nil?
      query_params[:'merchantProductNoList'] = @api_client.build_collection_param(opts[:'merchant_product_no_list'], :multi) if !opts[:'merchant_product_no_list'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CollectionOfMerchantProductResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Product
    # Retrieve a product based on the merchant reference.
    # @param merchant_product_no 
    # @param [Hash] opts the optional parameters
    # @return [SingleOfMerchantProductResponse]
    def product_get_by_merchant_product_no(merchant_product_no, opts = {})
      data, _status_code, _headers = product_get_by_merchant_product_no_with_http_info(merchant_product_no, opts)
      return data
    end

    # Get Product
    # Retrieve a product based on the merchant reference.
    # @param merchant_product_no 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleOfMerchantProductResponse, Fixnum, Hash)>] SingleOfMerchantProductResponse data, response status code and response headers
    def product_get_by_merchant_product_no_with_http_info(merchant_product_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_get_by_merchant_product_no ..."
      end
      # verify the required parameter 'merchant_product_no' is set
      if @api_client.config.client_side_validation && merchant_product_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_product_no' when calling ProductApi.product_get_by_merchant_product_no"
      end
      # resource path
      local_var_path = "/v2/products/{merchantProductNo}".sub('{' + 'merchantProductNo' + '}', merchant_product_no.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SingleOfMerchantProductResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_by_merchant_product_no\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
