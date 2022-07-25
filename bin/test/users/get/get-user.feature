Feature: Get user of reqrest

  Scenario: Get user
    Given url "https://reqres.in" + "/api/users/" + "7"
    When method Get
    Then status code 200