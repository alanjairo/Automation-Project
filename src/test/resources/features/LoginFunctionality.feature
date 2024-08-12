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
      | username | password       |
      | Batman   | I am the night |





  Scenario Outline: As a User I want to login with my newly made account into the planetarium so that i can add and upload planets
  and moons
    Given the user is on the Landing Page
    Given the username and password were registered
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks login button
    Then the user should be on the planetarium page


    Examples:
      | username                        | password                        |
      | Batman and Robin Unite Now!!!!  | Riddler and Joker Disagree!!!!  |


  Scenario Outline: Negative scenario - non-matching valid username and valid password (EG)
     Given the user is on the Landing Page
      When the user enters "<validUsername>" in the username bar
      And the user enters "<validPassword>" in the password bar
      And the user clicks login button
      Then the user should see an error message

      Examples:
        | validUsername | validPassword     |
        | Batman         | password        |



  Scenario Outline: Unsuccessful login with wrong username
    Given the user is on the Landing Page
    When the user enters "<invalidUsername>" in the username bar
    And the user enters "<password>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | invalidUsername | password              |
      | Batman!         | I am the night        |

  Scenario Outline: Unsuccessful login with wrong password
    Given the user is on the Landing Page
    When the user enters "<username>" in the username bar
    And the user enters "<invalidPassword>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | username        | invalidPassword     |
      | Batman          | I am the day        |

  Scenario Outline: Unsuccessful login with invalid credentials
    Given the user is on the Landing Page
    When the user enters "<invalidUsername>" in the username bar
    And the user enters "<invalidPassword>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | invalidUsername                 | invalidPassword                             |
      | Gordon and Clark are friends!!! | Reverse Flash strikes again!!!!             |

  Scenario Outline: Unsuccessful login with invalid username
    Given the user is on the Landing Page
    When the user enters "<invalidUsername>" in the username bar
    And the user enters "<password>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | invalidUsername                  | password                                  |
      | Gordon and Clark are friends!!!  | Riddler and Joker Disagree!!!!            |
      | Batman'; DROP TABLE users; --    | Riddler and Joker Disagree!!!!            |

  Scenario Outline: Unsuccessful login with invalid password
    Given the user is on the Landing Page
    When the user enters "<username>" in the username bar
    And the user enters "<invalidPassword>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | username                        | invalidPassword                         |
      | Batman and Robin Unite Now!!!!  | Reverse Flash strikes again!!!!         |


#  Scenario Outline: successful login with trailing spaces
#    Given the user is on the Landing Page
#    When the user enters "<SpacedUsername>" in the username bar
#    And the user enters "<password>" in the password bar
#    And the user clicks login button
#    Then the user should see an error message
#
#    Examples:
#      | SpacedUsername | password     |
#      | Batman   |I am the night|

  Scenario Outline: Unsuccessful login with invalid credentials
    Given the user is on the Landing Page
    When the user enters "<invalidUsername>" in the username bar
    And the user enters "<invalidPassword>" in the password bar
    And the user clicks login button
    Then the user should see an error message

    Examples:
      | invalidUsername | invalidPassword     |
      | I am the night  | Batman              |

