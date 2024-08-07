@RegistrationFunctionality
Feature: Registration Functionality

  Scenario Outline: As a User I want to register an account into the Planetarium Application
  User Registration functionality System Test for Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account was created
    Then the user should exit the prompted alert

    Examples:
      | username                        | password                        |
      | Ba1mwnde4wwBrbq7s16rge dow!!!!  | Diddler and Joker Disagree!!!!  |
      | Bawmewo2isaaw3t37awdee Now!!!!  | Rid Jokerdler and Disagree!!!!  |
      | BatmwndenwwBabisd1arge dow!!!!  | Diddler and Joker Disagree!!!!! |
      | Bawmeqobisaswatqcawd e Now!!!!! | Rid Jokerdler and Disagree!!!!  |
      | Bawmewo2isaaw3t37awdee Now!!!!  | Rid Jokerdler and Disagree!!!!  |
      | Ba1mwnde4wwBrbq7s16rge3dow!!!!  | Diddler and Joker Disagree!!!!  |