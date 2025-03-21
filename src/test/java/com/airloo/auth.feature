Feature: Get OAuth2 Token

  Scenario: Fetch OAuth2 Access Token

    Given url karate.get('authUrl')
    And param client_id = karate.get('client_id')
    And param client_secret = karate.get('client_secret')
    And param grant_type = 'client_credentials'

   When method POST

    Then status 200
    And match response.data.access_token != null
    * def accessToken = response.data.access_token

