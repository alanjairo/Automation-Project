@RegistrationFunctionality
Feature: registrationFunctionality

  Scenario Outline: As a User I want to register an account into the Planetarium Application with valid inputs
    User Registration functionality System Test for Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account created alert

    Examples:
      | username                        | password                        |
      | I am Batman hear me roar!!!!!!  | Diddler and Joker Disagree!!!!  |
      | I am Nightwing hear me roar!!!  | Rid Jokerdler and Disagree!!!!  |
      | ??????????????????????????????  | Diddler and Joker Disagree!!!!! |
      | @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ | Rid Jokerdler and Disagree!!!!  |
      | I am Batman hear me roar!!!!!!  | Diddler and Joker Disagree!!!!  |
      | I am Redhood hear me roar!!!!!  | Diddler and Joker Disagree!!!!  |


  Scenario Outline: As a User I want to not register an account into the Planetarium Application with invalid inputs
    User Registration functionality System Test for Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username                        | password                        |
      | Batman                          | I am the night                  |
      | !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  | Diddler and Joker Disagree!!!!! |
      | $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ | Rid Jokerdler and Disagree!!!!  |
      | I am Robin hear me roar!!!!!!!  | Rid Jokerdler and Disagree!!!!  |
      | I am Batgirl hear me roar!!!!!  | Diddler and Joker Disagree!!!!  |
      | I am Robin hear me roar!!!!!!!  | Rid Jokerdler and Disagree!!!!  |
