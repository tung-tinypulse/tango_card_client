=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>. <input type=\"hidden\" id=\"platformNameHolder\" value=\"QAPlatform2\" /><input type=\"hidden\" id=\"platformKeyHolder\" value=\"apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj\" /></p>

OpenAPI spec version: 2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get details for a specific Account on this Platform.
    # 
    # @param identifier identifier
    # @param [Hash] opts the optional parameters
    # @return [AccountView]
    def get_account(identifier, opts = {})
      data, _status_code, _headers = get_account_with_http_info(identifier, opts)
      return data
    end

    # Get details for a specific Account on this Platform.
    # 
    # @param identifier identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountView, Fixnum, Hash)>] AccountView data, response status code and response headers
    def get_account_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = "/raas/v2/accounts/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountView')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Accounts created on this Platform.
    # 
    # @param [Hash] opts the optional parameters
    # @return [AccountView]
    def list_customer_accounts(opts = {})
      data, _status_code, _headers = list_customer_accounts_with_http_info(opts)
      return data
    end

    # Get a list of Accounts created on this Platform.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountView, Fixnum, Hash)>] AccountView data, response status code and response headers
    def list_customer_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.list_customer_accounts ..."
      end
      # resource path
      local_var_path = "/raas/v2/accounts"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountView')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#list_customer_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
