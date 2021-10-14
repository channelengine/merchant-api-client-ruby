=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class ChannelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Channels.
    # Get all channels (excluding deleted ones).<br />You can use the returned ids to query the listed products for this channel from the ListedProducts endpoint.
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfChannelGlobalChannelResponse]
    def channel_plugins_get(opts = {})
      data, _status_code, _headers = channel_plugins_get_with_http_info(opts)
      data
    end

    # Get Channels.
    # Get all channels (excluding deleted ones).&lt;br /&gt;You can use the returned ids to query the listed products for this channel from the ListedProducts endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfChannelGlobalChannelResponse, Integer, Hash)>] CollectionOfChannelGlobalChannelResponse data, response status code and response headers
    def channel_plugins_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_plugins_get ...'
      end
      # resource path
      local_var_path = '/v2/channels'

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
      return_type = opts[:debug_return_type] || 'CollectionOfChannelGlobalChannelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_plugins_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_plugins_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
