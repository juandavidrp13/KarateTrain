Feature: Post user on reqrest

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request {"name": "#(name)","job": "#(job)"}

  Scenario Outline: Post a user
    When method post
    Then status 201
    Examples:
      | name    | job       |
      | Maira   | Developer |
      | Charlie | Doctor    |
      | Yole    | Degree    |


  Scenario: Post a user without job
    Given request {"name": "Maira Alexandra"}
    When method post
    Then status 201


  Scenario: Post a user
    Given url "https://reqres.in/api/users"
    And request {"name": "Kevin","job": "Developer"}
    When method post
    Then status 201



