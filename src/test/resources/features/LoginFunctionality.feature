@LoginFunctionality
Feature: LoginFunctionality

  Scenario Outline: As a User I want to login into the planetarium so that i can add and upload planets
  and moons
    Given the user is on the Landing Page
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks login button
    Then the user should be on the planetarium page


    Examples:
      | username                        | password                        |
      | Batman                          | I am the night                  |


  Scenario Outline: Unsuccessful login with invalid credentials
     Given the user is on the Landing Page
      When the user enters "<invalidUsername>" in the username bar
      And the user enters "<invalidPassword>" in the password bar
      And the user clicks login button
      Then the user should see an error message

      Examples:
        | invalidUsername | invalidPassword     |
        | I am the night  | Batman              |