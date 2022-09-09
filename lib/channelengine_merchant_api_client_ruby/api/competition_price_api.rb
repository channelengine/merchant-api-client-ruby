=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.13.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class CompetitionPriceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the BuyBox winner prices
    # Get the current price of the BuyBox winner per product for a channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :channel_id The id of the channel
    # @option opts [Array<String>] :gtin_list Search products by submitting a list of GTIN&#39;s. (optional)&lt;br /&gt;Max. 2000.
    # @option opts [Array<String>] :sku_list Search products by submitting a list of Sku&#39;s. (optional)&lt;br /&gt;Max. 2000. If GtinList is already set, this one is ignored.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantProductWithBuyBoxPrice]
    def competition_prices_get_buy_box_prices(opts = {})
      data, _status_code, _headers = competition_prices_get_buy_box_prices_with_http_info(opts)
      data
    end

    # Get the BuyBox winner prices
    # Get the current price of the BuyBox winner per product for a channel.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :channel_id The id of the channel
    # @option opts [Array<String>] :gtin_list Search products by submitting a list of GTIN&#39;s. (optional)&lt;br /&gt;Max. 2000.
    # @option opts [Array<String>] :sku_list Search products by submitting a list of Sku&#39;s. (optional)&lt;br /&gt;Max. 2000. If GtinList is already set, this one is ignored.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantProductWithBuyBoxPrice, Integer, Hash)>] CollectionOfMerchantProductWithBuyBoxPrice data, response status code and response headers
    def competition_prices_get_buy_box_prices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompetitionPriceApi.competition_prices_get_buy_box_prices ...'
      end
      # resource path
      local_var_path = '/v2/competitionprices/buyboxprices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'channelId'] = opts[:'channel_id'] if !opts[:'channel_id'].nil?
      query_params[:'gtinList'] = @api_client.build_collection_param(opts[:'gtin_list'], :multi) if !opts[:'gtin_list'].nil?
      query_params[:'skuList'] = @api_client.build_collection_param(opts[:'sku_list'], :multi) if !opts[:'sku_list'].nil?
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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantProductWithBuyBoxPrice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"CompetitionPriceApi.competition_prices_get_buy_box_prices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompetitionPriceApi#competition_prices_get_buy_box_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
