Feature: Submit order for eSIM
  Background:
    * def authResponse = call read('auth.feature')
    * def token = authResponse.accessToken


    Scenario: Create a new order
      Given url karate.get('baseUrl') +  '/orders'
      And header Authorization = 'Bearer ' + token
      * print 'PLEASE BE THE CORRECT TOKEN ' + token
      And header Content-Type = 'application/x-www-form-urlencoded'
      And form field quantity = formFieldsNewOrder.quantity
      And form field package_id = formFieldsNewOrder.package_id
      And form field type = formFieldsNewOrder.type
      And form field description = formFieldsNewOrder.description
      And form field brand_settings_name = formFieldsNewOrder.brand_settings_name

      When method POST

      Then status 200

      And response.data.package_id = 'merhaba-7days-1gb'
      And response.data.quantity = 6
      And response.data.type = 'sim'
      And response.data.validity = 7
      And response.data.data = '1GB'