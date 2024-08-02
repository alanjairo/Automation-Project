@RegistrationFunctionality
Feature: searchFunctionality

  Scenario Outline: As a User I want to register an account into the Planetarium Application
  User Registration functionality System Test for Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account was created

    Examples:
      | username                        | password                        |
      | BatmwndenssBabiysUaiee Now!!!!  | Diddler and Joker Disagree!!!!  |
      | Bawmeqobisaswitn awd e Now!!!!  | Rid Jokerdler and Disagree!!!!  |