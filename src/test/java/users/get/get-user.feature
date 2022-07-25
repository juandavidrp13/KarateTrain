Feature: Get user of reqrest

  Scenario: Get user
    Given url "https://reqres.in" + "/api/users/" + "7"
    When method Get
    Then status  200

  Scenario: Get users list
    * def jsonResponse = read('../../../resources/json/list_users.json')
    Given url "https://reqres.in/api/users?page=2"
    When method Get
    Then status  200
    And match $ == jsonResponse

