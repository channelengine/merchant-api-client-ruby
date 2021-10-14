=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class StockLocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the stock locations (or virtual warehouses).
    # Get the different stock locations (or virtual warehouses) that are in use.<br />This may include stock locations for 'fulfillment by ... (Amazon/bol/CDiscount)' (FBA/LVB/FBC) solutions.<br />You can use the id's to get to stock of products in specific stock location, e.g. the FBA stock for the products.
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantStockLocationResponse]
    def stock_location_index(opts = {})
      data, _status_code, _headers = stock_location_index_with_http_info(opts)
      data
    end

    # Get the stock locations (or virtual warehouses).
    # Get the different stock locations (or virtual warehouses) that are in use.&lt;br /&gt;This may include stock locations for &#39;fulfillment by ... (Amazon/bol/CDiscount)&#39; (FBA/LVB/FBC) solutions.&lt;br /&gt;You can use the id&#39;s to get to stock of products in specific stock location, e.g. the FBA stock for the products.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantStockLocationResponse, Integer, Hash)>] CollectionOfMerchantStockLocationResponse data, response status code and response headers
    def stock_location_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockLocationApi.stock_location_index ...'
      end
      # resource path
      local_var_path = '/v2/stocklocations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantStockLocationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"StockLocationApi.stock_location_index",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockLocationApi#stock_location_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
