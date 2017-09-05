# SwaggerClient::3FundApi

All URIs are relative to *https://integration-api.tangocard.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_credit_card**](3FundApi.md#create_credit_card) | **POST** /raas/v2/creditCards | Register a new Credit Card.
[**create_credit_card_deposit**](3FundApi.md#create_credit_card_deposit) | **POST** /raas/v2/creditCardDeposits | Fund an Account.
[**create_credit_card_unregister**](3FundApi.md#create_credit_card_unregister) | **POST** /raas/v2/creditCardUnregisters | Unregister a Credit Card.
[**get_credit_card**](3FundApi.md#get_credit_card) | **GET** /raas/v2/creditCards/{token} | Get details for a specific Credit Card.
[**get_credit_card_deposit**](3FundApi.md#get_credit_card_deposit) | **GET** /raas/v2/creditCardDeposits/{depositId} | Get details for a specific Credit Card Deposit.
[**list_credit_cards**](3FundApi.md#list_credit_cards) | **GET** /raas/v2/creditCards | List all credit cards registered on this Platform.


# **create_credit_card**
> CreditCardView create_credit_card(opts)

Register a new Credit Card.

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

api_instance = SwaggerClient::3FundApi.new

opts = { 
  credit_card_criteria: SwaggerClient::CreateCreditCardCriteria.new # CreateCreditCardCriteria | <strong>customerIdentifier</strong> - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.<br/><br/> <strong>accountIdentifier</strong> - specify the account this credit card is associated with<br/><br/> <strong>label</strong> - specify a label for the credit card<br/><br/> <strong>ipAddress</strong> - specify the The IP address of the person adding the credit card<br/><br/> <strong>creditCard - number</strong> - specify the account this order will be deducted from<br/><br/> <strong>creditCard - expiration</strong> - specify the card expiration date in YYYY-MM format<br/><br/> <strong>creditCard - verificationNumber</strong> - specify the 3 or 4-digit card security code on back of card (CVV2, CVC2, or CID)<br/><br/> <strong>billingAddress - firstName</strong> - specify the billing address first name<br/><br/> <strong>billingAddress - lastName</strong> - specify the billing address last name<br/><br/> <strong>billingAddress - addressLine1</strong> - specify the billing address line 1<br/><br/> <strong>billingAddress - addressLine2</strong> - Optional. Specify the billing address line 2<br/><br/> <strong>billingAddress - city</strong> - specify the billing address city<br/><br/> <strong>billingAddress - state</strong> - specify the billing address state<br/><br/> <strong>billingAddress - postalCode</strong> - specify the billing address postal code<br/><br/> <strong>billingAddress - country</strong> - specify the billing address 2-letter country code<br/><br/> <strong>billingAddress - emailAddress</strong> - specify the billing address email<br/><br/> 
}

begin
  #Register a new Credit Card.
  result = api_instance.create_credit_card(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->create_credit_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_card_criteria** | [**CreateCreditCardCriteria**](CreateCreditCardCriteria.md)| &lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this credit card is associated with&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;label&lt;/strong&gt; - specify a label for the credit card&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;ipAddress&lt;/strong&gt; - specify the The IP address of the person adding the credit card&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;creditCard - number&lt;/strong&gt; - specify the account this order will be deducted from&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;creditCard - expiration&lt;/strong&gt; - specify the card expiration date in YYYY-MM format&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;creditCard - verificationNumber&lt;/strong&gt; - specify the 3 or 4-digit card security code on back of card (CVV2, CVC2, or CID)&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - firstName&lt;/strong&gt; - specify the billing address first name&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - lastName&lt;/strong&gt; - specify the billing address last name&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - addressLine1&lt;/strong&gt; - specify the billing address line 1&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - addressLine2&lt;/strong&gt; - Optional. Specify the billing address line 2&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - city&lt;/strong&gt; - specify the billing address city&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - state&lt;/strong&gt; - specify the billing address state&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - postalCode&lt;/strong&gt; - specify the billing address postal code&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - country&lt;/strong&gt; - specify the billing address 2-letter country code&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;billingAddress - emailAddress&lt;/strong&gt; - specify the billing address email&lt;br/&gt;&lt;br/&gt;  | [optional] 

### Return type

[**CreditCardView**](CreditCardView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_credit_card_deposit**
> CreditCardDepositView create_credit_card_deposit(opts)

Fund an Account.

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

api_instance = SwaggerClient::3FundApi.new

opts = { 
  criteria: SwaggerClient::CreateCreditCardDepositCriteria.new # CreateCreditCardDepositCriteria | <strong>customerIdentifier</strong> - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.<br/><br/> <strong>accountIdentifier</strong> - specify the account this credit card is associated with<br/><br/> <strong>creditCardToken</strong> - specify the credit card token to fund with<br/><br/> <strong>amount</strong> - specify the amount to fund in USD<br/><br/> 
}

begin
  #Fund an Account.
  result = api_instance.create_credit_card_deposit(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->create_credit_card_deposit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **criteria** | [**CreateCreditCardDepositCriteria**](CreateCreditCardDepositCriteria.md)| &lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this credit card is associated with&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;creditCardToken&lt;/strong&gt; - specify the credit card token to fund with&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;amount&lt;/strong&gt; - specify the amount to fund in USD&lt;br/&gt;&lt;br/&gt;  | [optional] 

### Return type

[**CreditCardDepositView**](CreditCardDepositView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_credit_card_unregister**
> CreditCardUnregisterView create_credit_card_unregister(opts)

Unregister a Credit Card.

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

api_instance = SwaggerClient::3FundApi.new

opts = { 
  criteria: SwaggerClient::CreateCreditCardUnregisterCriteria.new # CreateCreditCardUnregisterCriteria | <strong>customerIdentifier</strong> - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.<br/><br/> <strong>accountIdentifier</strong> - specify the account this credit card is associated with<br/><br/> <strong>creditCardToken</strong> - specify the credit card token to unregister<br/><br/> 
}

begin
  #Unregister a Credit Card.
  result = api_instance.create_credit_card_unregister(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->create_credit_card_unregister: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **criteria** | [**CreateCreditCardUnregisterCriteria**](CreateCreditCardUnregisterCriteria.md)| &lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the credit card. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this credit card is associated with&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;creditCardToken&lt;/strong&gt; - specify the credit card token to unregister&lt;br/&gt;&lt;br/&gt;  | [optional] 

### Return type

[**CreditCardUnregisterView**](CreditCardUnregisterView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_credit_card**
> CreditCardView get_credit_card(token)

Get details for a specific Credit Card.

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

api_instance = SwaggerClient::3FundApi.new

token = "token_example" # String | Credit card token


begin
  #Get details for a specific Credit Card.
  result = api_instance.get_credit_card(token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->get_credit_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Credit card token | 

### Return type

[**CreditCardView**](CreditCardView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_credit_card_deposit**
> CreditCardDepositView get_credit_card_deposit(deposit_id)

Get details for a specific Credit Card Deposit.

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

api_instance = SwaggerClient::3FundApi.new

deposit_id = "deposit_id_example" # String | Credit card deposit identifier returned in Deposit response payload


begin
  #Get details for a specific Credit Card Deposit.
  result = api_instance.get_credit_card_deposit(deposit_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->get_credit_card_deposit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deposit_id** | **String**| Credit card deposit identifier returned in Deposit response payload | 

### Return type

[**CreditCardDepositView**](CreditCardDepositView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_credit_cards**
> CreditCardView list_credit_cards

List all credit cards registered on this Platform.

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

api_instance = SwaggerClient::3FundApi.new

begin
  #List all credit cards registered on this Platform.
  result = api_instance.list_credit_cards
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling 3FundApi->list_credit_cards: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CreditCardView**](CreditCardView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



