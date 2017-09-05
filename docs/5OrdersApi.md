# SwaggerClient::OrdersApi

All URIs are relative to *https://integration-api.tangocard.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_order**](OrdersApi.md#create_order) | **POST** /raas/v2/orders | Create an Order under a specific Account.
[**get_order**](OrdersApi.md#get_order) | **GET** /raas/v2/orders/{referenceOrderID} | Get details for a specific Order.
[**get_order_resends**](OrdersApi.md#get_order_resends) | **POST** /raas/v2/orders/{referenceOrderID}/resends | Resend a specific Order.
[**list_orders**](OrdersApi.md#list_orders) | **GET** /raas/v2/orders | Get a list of Orders placed under this Platform.


# **create_order**
> OrderViewSummary create_order(opts)

Create an Order under a specific Account.

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

api_instance = SwaggerClient::OrdersApi.new

opts = { 
  create_order_criteria: SwaggerClient::CreateOrderCriteria.new # CreateOrderCriteria | <strong>accountIdentifier</strong> - specify the account this order will be deducted from<br/><br/><strong>amount</strong> - specify the face value of of the reward. Always required, including for fixed value items.<br/><br/><strong>campaign</strong> - optional campaign that may be used to administratively categorize a specific order or, if applicable, call a designated campaign email template.<br/><br/><strong>customerIdentifier</strong> - specify the customer associated with the order. Must be the customer the accountIdentifier is associated with.<br/><br/><strong>emailSubject</strong> - Optional. If not specified, a default email subject will be used for the specified reward.<br/><br/><strong>externalRefID</strong> - Optional. Idempotenent field that can be used for client-side order cross reference and prevent accidental order duplication. Will be returned in order response, order details, and order history.<br/><br/><strong>message</strong> - optional gift message<br/><br/><strong>recipient - email</strong> - required if sendEmail is true<br/><br/><strong>recipient - firstName</strong> - required if sendEmail is true (100 character max)<br/><br/><strong>recipient - lastName</strong> - always optional (100 character max)<br/><br/><strong>sendEmail</strong> - should Tango Card send the email to the recipient?<br/><br/><strong>sender - firstName</strong> - always optional (100 character max)<br/><br/><strong>sender - lastName</strong> - always optional (100 character max)<br/><br/><strong>sender - email</strong> - always optional<br/><br/><strong>utid</strong> - the unique identifier for the reward you are sending as provided in the Get Catalog call<br/><br/><strong>notes</strong> - Optional order notes (up to 150 characters)
}

begin
  #Create an Order under a specific Account.
  result = api_instance.create_order(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->create_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_order_criteria** | [**CreateOrderCriteria**](CreateOrderCriteria.md)| &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this order will be deducted from&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;amount&lt;/strong&gt; - specify the face value of of the reward. Always required, including for fixed value items.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;campaign&lt;/strong&gt; - optional campaign that may be used to administratively categorize a specific order or, if applicable, call a designated campaign email template.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the order. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;emailSubject&lt;/strong&gt; - Optional. If not specified, a default email subject will be used for the specified reward.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;externalRefID&lt;/strong&gt; - Optional. Idempotenent field that can be used for client-side order cross reference and prevent accidental order duplication. Will be returned in order response, order details, and order history.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;message&lt;/strong&gt; - optional gift message&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - email&lt;/strong&gt; - required if sendEmail is true&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - firstName&lt;/strong&gt; - required if sendEmail is true (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sendEmail&lt;/strong&gt; - should Tango Card send the email to the recipient?&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - firstName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - email&lt;/strong&gt; - always optional&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;utid&lt;/strong&gt; - the unique identifier for the reward you are sending as provided in the Get Catalog call&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;notes&lt;/strong&gt; - Optional order notes (up to 150 characters) | [optional] 

### Return type

[**OrderViewSummary**](OrderViewSummary.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_order**
> OrderViewVerbose get_order(reference_order_id)

Get details for a specific Order.

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

api_instance = SwaggerClient::OrdersApi.new

reference_order_id = "reference_order_id_example" # String | Reference order ID is returned in the order response payload


begin
  #Get details for a specific Order.
  result = api_instance.get_order(reference_order_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference_order_id** | **String**| Reference order ID is returned in the order response payload | 

### Return type

[**OrderViewVerbose**](OrderViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_order_resends**
> ResendView get_order_resends(reference_order_id)

Resend a specific Order.

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

api_instance = SwaggerClient::OrdersApi.new

reference_order_id = "reference_order_id_example" # String | Reference order ID is returned in the order response payload


begin
  #Resend a specific Order.
  result = api_instance.get_order_resends(reference_order_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order_resends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference_order_id** | **String**| Reference order ID is returned in the order response payload | 

### Return type

[**ResendView**](ResendView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_orders**
> OrderListView list_orders(opts)

Get a list of Orders placed under this Platform.

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

api_instance = SwaggerClient::OrdersApi.new

opts = { 
  account_identifier: "account_identifier_example", # String | specify the account to be queried.
  customer_identifier: "customer_identifier_example", # String | specify the customer to be queried
  external_ref_id: "external_ref_id_example", # String | specify the external reference ID to be queried
  start_date: "start_date_example", # String | specify the starting date or date time to be queried according to RFC 3339, i.e. \"2016-01-01\" or \"2016-01-01T00:00:00Z\". See https://www.ietf.org/rfc/rfc3339.txt 
  end_date: "end_date_example", # String | specify the ending date or date time to be queried according to RFC 3339, i.e. \"2016-01-01\" or \"2016-01-01T00:00:00Z\". See https://www.ietf.org/rfc/rfc3339.txt 
  elements_per_block: 56, # Integer | specify the number of elements in a block.
  page: 56 # Integer | specify the page number to return.
}

begin
  #Get a list of Orders placed under this Platform.
  result = api_instance.list_orders(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->list_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_identifier** | **String**| specify the account to be queried. | [optional] 
 **customer_identifier** | **String**| specify the customer to be queried | [optional] 
 **external_ref_id** | **String**| specify the external reference ID to be queried | [optional] 
 **start_date** | **String**| specify the starting date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt  | [optional] 
 **end_date** | **String**| specify the ending date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt  | [optional] 
 **elements_per_block** | **Integer**| specify the number of elements in a block. | [optional] 
 **page** | **Integer**| specify the page number to return. | [optional] 

### Return type

[**OrderListView**](OrderListView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



