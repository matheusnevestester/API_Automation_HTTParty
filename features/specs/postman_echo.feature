@postman_echo
Feature: Postman echo API
    Examples of API validations using postman echo api

    @getRequest
    Scenario: GET request 
        Given I have the API endpoint for GET request
        When I make the request for the GET request
        Then the API must return the status code 200
        And the API must return the correct values in the GET request
        
    @postRequest
    Scenario: POST request
        Given I have the API endpoint for POST request
        When I make the request for the POST request passing a raw 
        Then the API must return the status code 200
        And the API must return the correct values in the POST response