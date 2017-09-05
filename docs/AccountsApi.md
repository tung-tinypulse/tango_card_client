# SwaggerClient::AccountsApi

All URIs are relative to *https://integration-api.tangocard.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountsApi.md#get_account) | **GET** /raas/v2/accounts/{identifier} | Get details for a specific Account on this Platform.
[**list_customer_accounts**](AccountsApi.md#list_customer_accounts) | **GET** /raas/v2/accounts | Get a list of Accounts created on this Platform.


# **get_account**
> AccountView get_account(identifier)

Get details for a specific Account on this Platform.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::AccountsApi.new

identifier = "identifier_example" # String | identifier


begin
  #Get details for a specific Account on this Platform.
  result = api_instance.get_account(identifier)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| identifier | 

### Return type

[**AccountView**](AccountView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_customer_accounts**
> AccountView list_customer_accounts

Get a list of Accounts created on this Platform.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::AccountsApi.new

begin
  #Get a list of Accounts created on this Platform.
  result = api_instance.list_customer_accounts
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->list_customer_accounts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountView**](AccountView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



