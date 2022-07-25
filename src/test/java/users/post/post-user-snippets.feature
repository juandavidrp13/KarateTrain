@ignore
Feature: Resusable scenario

  @Create
  Scenario: Post a user without job
    Given url "https://reqres.in/api/users"
    And request {"name": "Maira Alexandra", "job": "Lawyer"}
    When method post
    Then status 201
    And def userId = response.id
