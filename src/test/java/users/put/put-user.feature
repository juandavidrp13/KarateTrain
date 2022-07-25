Feature: Update to user on redrest

  Scenario: Put (update) user
    Given url "https://reqres.in" + "/api/users/" + "191"
    And request {"name": "Alexa","job": "zion resident"}
    When method  put
    Then status 200
