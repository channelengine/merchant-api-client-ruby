=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.13.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class ProductBundleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get product bundles.
    # You can get the full product information on bundles from the regular /products endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search product(s) by Name, MerchantProductNo, Ean or Brand&lt;br /&gt;This search is applied to the result after applying the other filters.
    # @option opts [Array<String>] :ean_list Search products by submitting a list of EAN&#39;s.
    # @option opts [Array<String>] :merchant_product_no_list Search products by submitting a list of MerchantProductNo&#39;s.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantProductBundleResponse]
    def product_bundle_get_by_filter(opts = {})
      data, _status_code, _headers = product_bundle_get_by_filter_with_http_info(opts)
      data
    end

    # Get product bundles.
    # You can get the full product information on bundles from the regular /products endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Search product(s) by Name, MerchantProductNo, Ean or Brand&lt;br /&gt;This search is applied to the result after applying the other filters.
    # @option opts [Array<String>] :ean_list Search products by submitting a list of EAN&#39;s.
    # @option opts [Array<String>] :merchant_product_no_list Search products by submitting a list of MerchantProductNo&#39;s.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantProductBundleResponse, Integer, Hash)>] CollectionOfMerchantProductBundleResponse data, response status code and response headers
    def product_bundle_get_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductBundleApi.product_bundle_get_by_filter ...'
      end
      # resource path
      local_var_path = '/v2/productbundles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'eanList'] = @api_client.build_collection_param(opts[:'ean_list'], :multi) if !opts[:'ean_list'].nil?
      query_params[:'merchantProductNoList'] = @api_client.build_collection_param(opts[:'merchant_product_no_list'], :multi) if !opts[:'merchant_product_no_list'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantProductBundleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductBundleApi.product_bundle_get_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductBundleApi#product_bundle_get_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
