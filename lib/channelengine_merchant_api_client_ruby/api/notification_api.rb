=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.8

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class NotificationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Notifications.
    # Gets all notifications based on filter.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date Filter on the notification date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the notification date, until this date. This date is exclusive.
    # @option opts [Array<NotificationType>] :types Notification type(s) to filter on.
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [Array<String>] :merchant_return_nos Filter on unique return reference used by the merchant.
    # @option opts [Array<String>] :channel_return_nos Filter on unique return reference used by the channel.
    # @option opts [Array<String>] :merchant_shipment_nos Filter on unique shipment reference used by the merchant.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantNotificationResponse]
    def notification_index(opts = {})
      data, _status_code, _headers = notification_index_with_http_info(opts)
      data
    end

    # Get Notifications.
    # Gets all notifications based on filter.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date Filter on the notification date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the notification date, until this date. This date is exclusive.
    # @option opts [Array<NotificationType>] :types Notification type(s) to filter on.
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [Array<String>] :merchant_return_nos Filter on unique return reference used by the merchant.
    # @option opts [Array<String>] :channel_return_nos Filter on unique return reference used by the channel.
    # @option opts [Array<String>] :merchant_shipment_nos Filter on unique shipment reference used by the merchant.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantNotificationResponse, Integer, Hash)>] CollectionOfMerchantNotificationResponse data, response status code and response headers
    def notification_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.notification_index ...'
      end
      # resource path
      local_var_path = '/v2/notifications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'types'] = @api_client.build_collection_param(opts[:'types'], :multi) if !opts[:'types'].nil?
      query_params[:'merchantOrderNos'] = @api_client.build_collection_param(opts[:'merchant_order_nos'], :multi) if !opts[:'merchant_order_nos'].nil?
      query_params[:'channelOrderNos'] = @api_client.build_collection_param(opts[:'channel_order_nos'], :multi) if !opts[:'channel_order_nos'].nil?
      query_params[:'merchantReturnNos'] = @api_client.build_collection_param(opts[:'merchant_return_nos'], :multi) if !opts[:'merchant_return_nos'].nil?
      query_params[:'channelReturnNos'] = @api_client.build_collection_param(opts[:'channel_return_nos'], :multi) if !opts[:'channel_return_nos'].nil?
      query_params[:'merchantShipmentNos'] = @api_client.build_collection_param(opts[:'merchant_shipment_nos'], :multi) if !opts[:'merchant_shipment_nos'].nil?
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
      return_type = opts[:debug_return_type] || 'CollectionOfMerchantNotificationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"NotificationApi.notification_index",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#notification_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
