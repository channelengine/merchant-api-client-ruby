=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.13.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class ReturnApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Acknowledge Return.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnAcknowledgeRequest] :merchant_return_acknowledge_request 
    # @return [ApiResponse]
    def return_acknowledge(opts = {})
      data, _status_code, _headers = return_acknowledge_with_http_info(opts)
      data
    end

    # Acknowledge Return.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnAcknowledgeRequest] :merchant_return_acknowledge_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def return_acknowledge_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_acknowledge ...'
      end
      # resource path
      local_var_path = '/v2/returns/merchant/acknowledge'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_return_acknowledge_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_acknowledge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_acknowledge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Return.
    # Mark (part of) an order as returned by the customer.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnRequest] :merchant_return_request 
    # @return [ApiResponse]
    def return_declare_for_merchant(opts = {})
      data, _status_code, _headers = return_declare_for_merchant_with_http_info(opts)
      data
    end

    # Create Return.
    # Mark (part of) an order as returned by the customer.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnRequest] :merchant_return_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def return_declare_for_merchant_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_declare_for_merchant ...'
      end
      # resource path
      local_var_path = '/v2/returns/merchant'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_return_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_declare_for_merchant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_declare_for_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Return.
    # Retrieve returns based on the supplied merchant order number. May return more than 1 result.<br />This call is supposed to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
    # @param merchant_order_no [String] 
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantSingleOrderReturnResponse]
    def return_get_by_merchant_order_no(merchant_order_no, opts = {})
      data, _status_code, _headers = return_get_by_merchant_order_no_with_http_info(merchant_order_no, opts)
      data
    end

    # Get Return.
    # Retrieve returns based on the supplied merchant order number. May return more than 1 result.&lt;br /&gt;This call is supposed to be used by merchants. Channels should use the &#39;GET /v2/returns/channel&#39;&lt;br /&gt;call.
    # @param merchant_order_no [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantSingleOrderReturnResponse, Integer, Hash)>] CollectionOfMerchantSingleOrderReturnResponse data, response status code and response headers
    def return_get_by_merchant_order_no_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_get_by_merchant_order_no ...'
      end
      # verify the required parameter 'merchant_order_no' is set
      if @api_client.config.client_side_validation && merchant_order_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_order_no' when calling ReturnApi.return_get_by_merchant_order_no"
      end
      # resource path
      local_var_path = '/v2/returns/merchant/{merchantOrderNo}'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantSingleOrderReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_get_by_merchant_order_no",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_by_merchant_order_no\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Returns.
    # Get all returns created by the channel. This call is supposed<br />to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [FulfillmentType] :fulfillment_type Filter on the fulfillment type of the order.
    # @option opts [Array<ReturnStatus>] :statuses Return status(es) to filter on.
    # @option opts [Array<ReturnReason>] :reasons Return reason(s) to filter on.
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Boolean] :is_acknowledged Filters based on acknowledgements
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantReturnResponse]
    def return_get_declared_by_channel(opts = {})
      data, _status_code, _headers = return_get_declared_by_channel_with_http_info(opts)
      data
    end

    # Get Returns.
    # Get all returns created by the channel. This call is supposed&lt;br /&gt;to be used by merchants. Channels should use the &#39;GET /v2/returns/channel&#39;&lt;br /&gt;call.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [FulfillmentType] :fulfillment_type Filter on the fulfillment type of the order.
    # @option opts [Array<ReturnStatus>] :statuses Return status(es) to filter on.
    # @option opts [Array<ReturnReason>] :reasons Return reason(s) to filter on.
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Boolean] :is_acknowledged Filters based on acknowledgements
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantReturnResponse, Integer, Hash)>] CollectionOfMerchantReturnResponse data, response status code and response headers
    def return_get_declared_by_channel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_get_declared_by_channel ...'
      end
      # resource path
      local_var_path = '/v2/returns/merchant'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'channelIds'] = @api_client.build_collection_param(opts[:'channel_ids'], :multi) if !opts[:'channel_ids'].nil?
      query_params[:'merchantOrderNos'] = @api_client.build_collection_param(opts[:'merchant_order_nos'], :multi) if !opts[:'merchant_order_nos'].nil?
      query_params[:'channelOrderNos'] = @api_client.build_collection_param(opts[:'channel_order_nos'], :multi) if !opts[:'channel_order_nos'].nil?
      query_params[:'fulfillmentType'] = opts[:'fulfillment_type'] if !opts[:'fulfillment_type'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'reasons'] = @api_client.build_collection_param(opts[:'reasons'], :multi) if !opts[:'reasons'].nil?
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'isAcknowledged'] = opts[:'is_acknowledged'] if !opts[:'is_acknowledged'].nil?
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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_get_declared_by_channel",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_declared_by_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Returns.
    # Get all returns created by the merchant. This call is supposed<br />to be used by merchants. To get returns created by channels, the 'GET /v2/returns/merchant' endpoint should be used.<br />Channels should use the 'GET /v2/returns/channel' call.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatorFilter] :creator_type Filter on the return&#39;s creator. Default is MIXED.
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [FulfillmentType] :fulfillment_type Filter on the fulfillment type of the order.
    # @option opts [Array<ReturnStatus>] :statuses Return status(es) to filter on.
    # @option opts [Array<ReturnReason>] :reasons Return reason(s) to filter on.
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Boolean] :is_acknowledged Filters based on acknowledgements
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantReturnResponse]
    def return_get_returns(opts = {})
      data, _status_code, _headers = return_get_returns_with_http_info(opts)
      data
    end

    # Get Returns.
    # Get all returns created by the merchant. This call is supposed&lt;br /&gt;to be used by merchants. To get returns created by channels, the &#39;GET /v2/returns/merchant&#39; endpoint should be used.&lt;br /&gt;Channels should use the &#39;GET /v2/returns/channel&#39; call.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatorFilter] :creator_type Filter on the return&#39;s creator. Default is MIXED.
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [FulfillmentType] :fulfillment_type Filter on the fulfillment type of the order.
    # @option opts [Array<ReturnStatus>] :statuses Return status(es) to filter on.
    # @option opts [Array<ReturnReason>] :reasons Return reason(s) to filter on.
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Boolean] :is_acknowledged Filters based on acknowledgements
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantReturnResponse, Integer, Hash)>] CollectionOfMerchantReturnResponse data, response status code and response headers
    def return_get_returns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_get_returns ...'
      end
      # resource path
      local_var_path = '/v2/returns'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'creatorType'] = opts[:'creator_type'] if !opts[:'creator_type'].nil?
      query_params[:'channelIds'] = @api_client.build_collection_param(opts[:'channel_ids'], :multi) if !opts[:'channel_ids'].nil?
      query_params[:'merchantOrderNos'] = @api_client.build_collection_param(opts[:'merchant_order_nos'], :multi) if !opts[:'merchant_order_nos'].nil?
      query_params[:'channelOrderNos'] = @api_client.build_collection_param(opts[:'channel_order_nos'], :multi) if !opts[:'channel_order_nos'].nil?
      query_params[:'fulfillmentType'] = opts[:'fulfillment_type'] if !opts[:'fulfillment_type'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'reasons'] = @api_client.build_collection_param(opts[:'reasons'], :multi) if !opts[:'reasons'].nil?
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'isAcknowledged'] = opts[:'is_acknowledged'] if !opts[:'is_acknowledged'].nil?
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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_get_returns",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_returns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Unhandled Returns.
    # Get all new / unhandled returns created by channels. This call is supposed<br />to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantReturnResponse]
    def return_get_unhandled(opts = {})
      data, _status_code, _headers = return_get_unhandled_with_http_info(opts)
      data
    end

    # Get Unhandled Returns.
    # Get all new / unhandled returns created by channels. This call is supposed&lt;br /&gt;to be used by merchants. Channels should use the &#39;GET /v2/returns/channel&#39;&lt;br /&gt;call.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :channel_ids Filter on Channel IDs
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantReturnResponse, Integer, Hash)>] CollectionOfMerchantReturnResponse data, response status code and response headers
    def return_get_unhandled_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_get_unhandled ...'
      end
      # resource path
      local_var_path = '/v2/returns/merchant/new'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'channelIds'] = @api_client.build_collection_param(opts[:'channel_ids'], :multi) if !opts[:'channel_ids'].nil?
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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_get_unhandled",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_unhandled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark a return as received.
    # Mark a return as received.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnUpdateRequest] :merchant_return_update_request 
    # @return [ApiResponse]
    def return_update_for_merchant(opts = {})
      data, _status_code, _headers = return_update_for_merchant_with_http_info(opts)
      data
    end

    # Mark a return as received.
    # Mark a return as received.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantReturnUpdateRequest] :merchant_return_update_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def return_update_for_merchant_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReturnApi.return_update_for_merchant ...'
      end
      # resource path
      local_var_path = '/v2/returns'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_return_update_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ReturnApi.return_update_for_merchant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_update_for_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
