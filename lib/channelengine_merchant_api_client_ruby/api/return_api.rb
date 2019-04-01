=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineMerchantApiClient
  class ReturnApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Return
    # Mark (part of) an order as returned by the customer.
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def return_declare_for_merchant(model, opts = {})
      data, _status_code, _headers = return_declare_for_merchant_with_http_info(model, opts)
      return data
    end

    # Create Return
    # Mark (part of) an order as returned by the customer.
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Fixnum, Hash)>] ApiResponse data, response status code and response headers
    def return_declare_for_merchant_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReturnApi.return_declare_for_merchant ..."
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling ReturnApi.return_declare_for_merchant"
      end
      # resource path
      local_var_path = "/v2/returns/merchant"

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
      post_body = @api_client.object_to_http_body(model)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_declare_for_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Returns
    # Get all returns created by the channel. This call is supposed  to be used by merchants. Channels should use the 'GET /v2/returns/channel'  call.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_since 
    # @return [CollectionOfMerchantReturnResponse]
    def return_get_declared_by_channel(opts = {})
      data, _status_code, _headers = return_get_declared_by_channel_with_http_info(opts)
      return data
    end

    # Get Returns
    # Get all returns created by the channel. This call is supposed  to be used by merchants. Channels should use the &#39;GET /v2/returns/channel&#39;  call.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_since 
    # @return [Array<(CollectionOfMerchantReturnResponse, Fixnum, Hash)>] CollectionOfMerchantReturnResponse data, response status code and response headers
    def return_get_declared_by_channel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReturnApi.return_get_declared_by_channel ..."
      end
      # resource path
      local_var_path = "/v2/returns/merchant"

      # query parameters
      query_params = {}
      query_params[:'createdSince'] = opts[:'created_since'] if !opts[:'created_since'].nil?

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
        :return_type => 'CollectionOfMerchantReturnResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_declared_by_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Unhandled Returns
    # Get all new / unhandled returns created by channels. This call is supposed  to be used by merchants. Channels should use the 'GET /v2/returns/channel'  call.
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantReturnResponse]
    def return_get_unhandled(opts = {})
      data, _status_code, _headers = return_get_unhandled_with_http_info(opts)
      return data
    end

    # Get Unhandled Returns
    # Get all new / unhandled returns created by channels. This call is supposed  to be used by merchants. Channels should use the &#39;GET /v2/returns/channel&#39;  call.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantReturnResponse, Fixnum, Hash)>] CollectionOfMerchantReturnResponse data, response status code and response headers
    def return_get_unhandled_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReturnApi.return_get_unhandled ..."
      end
      # resource path
      local_var_path = "/v2/returns/merchant/new"

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
        :return_type => 'CollectionOfMerchantReturnResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_get_unhandled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark a return as received
    # Mark a return as received
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def return_update_for_merchant(model, opts = {})
      data, _status_code, _headers = return_update_for_merchant_with_http_info(model, opts)
      return data
    end

    # Mark a return as received
    # Mark a return as received
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Fixnum, Hash)>] ApiResponse data, response status code and response headers
    def return_update_for_merchant_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReturnApi.return_update_for_merchant ..."
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling ReturnApi.return_update_for_merchant"
      end
      # resource path
      local_var_path = "/v2/returns"

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
      post_body = @api_client.object_to_http_body(model)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReturnApi#return_update_for_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
