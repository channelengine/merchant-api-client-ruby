=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineMerchantApiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Acknowledge Order
    # Acknowledge an order. By acknowledging the order the merchant can confirm that  the order has been imported. When acknowledging an order the merchant has to supply  references that uniquely identify the order and the order lines. These references  will be used in the other API calls.
    # @param model Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def order_acknowledge(model, opts = {})
      data, _status_code, _headers = order_acknowledge_with_http_info(model, opts)
      return data
    end

    # Acknowledge Order
    # Acknowledge an order. By acknowledging the order the merchant can confirm that  the order has been imported. When acknowledging an order the merchant has to supply  references that uniquely identify the order and the order lines. These references  will be used in the other API calls.
    # @param model Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Fixnum, Hash)>] ApiResponse data, response status code and response headers
    def order_acknowledge_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_acknowledge ..."
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling OrderApi.order_acknowledge"
      end
      # resource path
      local_var_path = "/v2/orders/acknowledge"

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
        @api_client.config.logger.debug "API called: OrderApi#order_acknowledge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Orders By Filter
    # Fetch orders based on the provided OrderFilter
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_statuses Order status(es) to filter on
    # @option opts [Array<String>] :filter_merchant_order_nos Filter on unique order reference used by the merchant
    # @option opts [DateTime] :filter_from_date Filter on the order date, starting from this date. This date is inclusive.
    # @option opts [DateTime] :filter_to_date Filter on the order date, until this date. This date is exclusive.
    # @option opts [BOOLEAN] :filter_exclude_marketplace_fulfilled_orders_and_lines Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.)
    # @option opts [String] :filter_fulfillment_type Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
    # @option opts [Integer] :filter_page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantOrderResponse]
    def order_get_by_filter(opts = {})
      data, _status_code, _headers = order_get_by_filter_with_http_info(opts)
      return data
    end

    # Get Orders By Filter
    # Fetch orders based on the provided OrderFilter
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_statuses Order status(es) to filter on
    # @option opts [Array<String>] :filter_merchant_order_nos Filter on unique order reference used by the merchant
    # @option opts [DateTime] :filter_from_date Filter on the order date, starting from this date. This date is inclusive.
    # @option opts [DateTime] :filter_to_date Filter on the order date, until this date. This date is exclusive.
    # @option opts [BOOLEAN] :filter_exclude_marketplace_fulfilled_orders_and_lines Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.)
    # @option opts [String] :filter_fulfillment_type Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
    # @option opts [Integer] :filter_page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantOrderResponse, Fixnum, Hash)>] CollectionOfMerchantOrderResponse data, response status code and response headers
    def order_get_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_get_by_filter ..."
      end
      if @api_client.config.client_side_validation && opts[:'filter_statuses'] && !opts[:'filter_statuses'].all?{|item| ['IN_PROGRESS', 'SHIPPED', 'IN_BACKORDER', 'MANCO', 'IN_COMBI', 'CLOSED', 'NEW', 'RETURNED', 'REQUIRES_CORRECTION'].include?(item)}
        fail ArgumentError, 'invalid value for "filter_statuses", must include one of IN_PROGRESS, SHIPPED, IN_BACKORDER, MANCO, IN_COMBI, CLOSED, NEW, RETURNED, REQUIRES_CORRECTION'
      end
      if @api_client.config.client_side_validation && opts[:'filter_fulfillment_type'] && !['ALL', 'ONLY_MERCHANT', 'ONLY_CHANNEL', 'MIXED'].include?(opts[:'filter_fulfillment_type'])
        fail ArgumentError, 'invalid value for "filter_fulfillment_type", must be one of ALL, ONLY_MERCHANT, ONLY_CHANNEL, MIXED'
      end
      # resource path
      local_var_path = "/v2/orders"

      # query parameters
      query_params = {}
      query_params[:'filter.statuses'] = @api_client.build_collection_param(opts[:'filter_statuses'], :multi) if !opts[:'filter_statuses'].nil?
      query_params[:'filter.merchantOrderNos'] = @api_client.build_collection_param(opts[:'filter_merchant_order_nos'], :multi) if !opts[:'filter_merchant_order_nos'].nil?
      query_params[:'filter.fromDate'] = opts[:'filter_from_date'] if !opts[:'filter_from_date'].nil?
      query_params[:'filter.toDate'] = opts[:'filter_to_date'] if !opts[:'filter_to_date'].nil?
      query_params[:'filter.excludeMarketplaceFulfilledOrdersAndLines'] = opts[:'filter_exclude_marketplace_fulfilled_orders_and_lines'] if !opts[:'filter_exclude_marketplace_fulfilled_orders_and_lines'].nil?
      query_params[:'filter.fulfillmentType'] = opts[:'filter_fulfillment_type'] if !opts[:'filter_fulfillment_type'].nil?
      query_params[:'filter.page'] = opts[:'filter_page'] if !opts[:'filter_page'].nil?

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
        :return_type => 'CollectionOfMerchantOrderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get New Orders
    # Fetch newly placed orders (order with status NEW).
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantOrderResponse]
    def order_get_new(opts = {})
      data, _status_code, _headers = order_get_new_with_http_info(opts)
      return data
    end

    # Get New Orders
    # Fetch newly placed orders (order with status NEW).
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantOrderResponse, Fixnum, Hash)>] CollectionOfMerchantOrderResponse data, response status code and response headers
    def order_get_new_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_get_new ..."
      end
      # resource path
      local_var_path = "/v2/orders/new"

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
        :return_type => 'CollectionOfMerchantOrderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_new\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Invoice
    # Generates the ChannelEngine VAT invoice for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language (default to false)
    # @return [File]
    def order_invoice(merchant_order_no, opts = {})
      data, _status_code, _headers = order_invoice_with_http_info(merchant_order_no, opts)
      return data
    end

    # Download Invoice
    # Generates the ChannelEngine VAT invoice for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def order_invoice_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_invoice ..."
      end
      # verify the required parameter 'merchant_order_no' is set
      if @api_client.config.client_side_validation && merchant_order_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_order_no' when calling OrderApi.order_invoice"
      end
      # resource path
      local_var_path = "/v2/orders/{merchantOrderNo}/invoice".sub('{' + 'merchantOrderNo' + '}', merchant_order_no.to_s)

      # query parameters
      query_params = {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Packing Slip
    # Generates the ChannelEngine packing slip for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language (default to false)
    # @return [File]
    def order_packing_slip(merchant_order_no, opts = {})
      data, _status_code, _headers = order_packing_slip_with_http_info(merchant_order_no, opts)
      return data
    end

    # Download Packing Slip
    # Generates the ChannelEngine packing slip for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def order_packing_slip_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_packing_slip ..."
      end
      # verify the required parameter 'merchant_order_no' is set
      if @api_client.config.client_side_validation && merchant_order_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_order_no' when calling OrderApi.order_packing_slip"
      end
      # resource path
      local_var_path = "/v2/orders/{merchantOrderNo}/packingslip".sub('{' + 'merchantOrderNo' + '}', merchant_order_no.to_s)

      # query parameters
      query_params = {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
