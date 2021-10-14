=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class ShipmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Shipment.
    # Mark (part of) an order as shipped.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentRequest] :merchant_shipment_request 
    # @return [ApiResponse]
    def shipment_create(opts = {})
      data, _status_code, _headers = shipment_create_with_http_info(opts)
      data
    end

    # Create Shipment.
    # Mark (part of) an order as shipped.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentRequest] :merchant_shipment_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def shipment_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_create ...'
      end
      # resource path
      local_var_path = '/v2/shipments'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create shipment for channel provided shipping labels
    # Create a shipment, which will request a shipping label from the channel
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantChannelLabelShipmentRequest] :merchant_channel_label_shipment_request The shipment to create
    # @return [ApiResponse]
    def shipment_create_for_channel_method(opts = {})
      data, _status_code, _headers = shipment_create_for_channel_method_with_http_info(opts)
      data
    end

    # Create shipment for channel provided shipping labels
    # Create a shipment, which will request a shipping label from the channel
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantChannelLabelShipmentRequest] :merchant_channel_label_shipment_request The shipment to create
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def shipment_create_for_channel_method_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_create_for_channel_method ...'
      end
      # resource path
      local_var_path = '/v2/shipments/channelmethod'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_channel_label_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_create_for_channel_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_create_for_channel_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get carriers for channel provided shipping labels
    # Get the carriers for buying a shipping label from the channel
    # @param merchant_order_no [String] The merchant&#39;s order reference.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentLabelCarrierRequest] :merchant_shipment_label_carrier_request The parcel information
    # @return [ApiResponse]
    def shipment_get_shipment_label_carriers(merchant_order_no, opts = {})
      data, _status_code, _headers = shipment_get_shipment_label_carriers_with_http_info(merchant_order_no, opts)
      data
    end

    # Get carriers for channel provided shipping labels
    # Get the carriers for buying a shipping label from the channel
    # @param merchant_order_no [String] The merchant&#39;s order reference.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentLabelCarrierRequest] :merchant_shipment_label_carrier_request The parcel information
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def shipment_get_shipment_label_carriers_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_get_shipment_label_carriers ...'
      end
      # resource path
      local_var_path = '/v2/carriers/{merchantOrderNo}'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_shipment_label_carrier_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_get_shipment_label_carriers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_get_shipment_label_carriers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download shipping label.
    # Downloads the shipping label for the shipment
    # @param merchant_shipment_no [String] The unique shipment reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def shipment_shipping_label(merchant_shipment_no, opts = {})
      data, _status_code, _headers = shipment_shipping_label_with_http_info(merchant_shipment_no, opts)
      data
    end

    # Download shipping label.
    # Downloads the shipping label for the shipment
    # @param merchant_shipment_no [String] The unique shipment reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def shipment_shipping_label_with_http_info(merchant_shipment_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_shipping_label ...'
      end
      # resource path
      local_var_path = '/v2/orders/{merchantShipmentNo}/shippinglabel'.sub('{' + 'merchantShipmentNo' + '}', CGI.escape(merchant_shipment_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.shippingLabel', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_shipping_label",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_shipping_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Shipment.
    # Update an existing shipment with tracking information.
    # @param merchant_shipment_no [String] The merchant&#39;s shipment reference.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentTrackingRequest] :merchant_shipment_tracking_request The updated tracking information.
    # @return [ApiResponse]
    def shipment_update(merchant_shipment_no, opts = {})
      data, _status_code, _headers = shipment_update_with_http_info(merchant_shipment_no, opts)
      data
    end

    # Update Shipment.
    # Update an existing shipment with tracking information.
    # @param merchant_shipment_no [String] The merchant&#39;s shipment reference.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantShipmentTrackingRequest] :merchant_shipment_tracking_request The updated tracking information.
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def shipment_update_with_http_info(merchant_shipment_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_update ...'
      end
      # resource path
      local_var_path = '/v2/shipments/{merchantShipmentNo}'.sub('{' + 'merchantShipmentNo' + '}', CGI.escape(merchant_shipment_no.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_shipment_tracking_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
