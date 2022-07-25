Feature: delete user of reqrest

  Scenario: Delete user
    * call read("../post/post-user-snippets.feature@Create")
    Given url "https://reqres.in" + "/api/users/" + userId
    When method delete
    Then status 204