# SwaggerClient::CatalogsApi

All URIs are relative to *https://integration-api.tangocard.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_catalog**](CatalogsApi.md#get_catalog) | **GET** /raas/v2/catalogs | Get all items in the Platform&#39;s Catalog.


# **get_catalog**
> CatalogViewVerbose get_catalog(opts)

Get all items in the Platform's Catalog.

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

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  verbose: true # BOOLEAN | Verbose payload
}

begin
  #Get all items in the Platform's Catalog.
  result = api_instance.get_catalog(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->get_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verbose** | **BOOLEAN**| Verbose payload | [optional] [default to true]

### Return type

[**CatalogViewVerbose**](CatalogViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



