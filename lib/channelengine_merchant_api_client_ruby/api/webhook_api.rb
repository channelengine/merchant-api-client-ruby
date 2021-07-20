=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.8

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Webhook.
    # Create a new webhook in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantWebhookRequest] :merchant_webhook_request 
    # @return [ApiResponse]
    def webhooks_create(opts = {})
      data, _status_code, _headers = webhooks_create_with_http_info(opts)
      data
    end

    # Create Webhook.
    # Create a new webhook in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantWebhookRequest] :merchant_webhook_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def webhooks_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.webhooks_create ...'
      end
      # resource path
      local_var_path = '/v2/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_webhook_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"WebhookApi.webhooks_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#webhooks_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Webhook.
    # Delete a webhook based on the webhook name.
    # @param webhook_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def webhooks_delete(webhook_name, opts = {})
      data, _status_code, _headers = webhooks_delete_with_http_info(webhook_name, opts)
      data
    end

    # Delete Webhook.
    # Delete a webhook based on the webhook name.
    # @param webhook_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def webhooks_delete_with_http_info(webhook_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.webhooks_delete ...'
      end
      # resource path
      local_var_path = '/v2/webhooks/{webhookName}'.sub('{' + 'webhookName' + '}', CGI.escape(webhook_name.to_s))

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
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"WebhookApi.webhooks_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#webhooks_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Webhooks.
    # Get all webhooks created in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantWebhookResponse]
    def webhooks_get_all(opts = {})
      data, _status_code, _headers = webhooks_get_all_with_http_info(opts)
      data
    end

    # Get Webhooks.
    # Get all webhooks created in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantWebhookResponse, Integer, Hash)>] CollectionOfMerchantWebhookResponse data, response status code and response headers
    def webhooks_get_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.webhooks_get_all ...'
      end
      # resource path
      local_var_path = '/v2/webhooks'

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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantWebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"WebhookApi.webhooks_get_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#webhooks_get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Webhook.
    # Update a webhook in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantWebhookRequest] :merchant_webhook_request 
    # @return [ApiResponse]
    def webhooks_update(opts = {})
      data, _status_code, _headers = webhooks_update_with_http_info(opts)
      data
    end

    # Update Webhook.
    # Update a webhook in the ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantWebhookRequest] :merchant_webhook_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def webhooks_update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.webhooks_update ...'
      end
      # resource path
      local_var_path = '/v2/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_webhook_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"WebhookApi.webhooks_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#webhooks_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end