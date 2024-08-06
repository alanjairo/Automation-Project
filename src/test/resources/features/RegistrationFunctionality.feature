@RegistrationFunctionality
Feature: searchFunctionality

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
      | Ba1mwnde48w1r3m17326rg16do4211  | Diddler and Joker Disagree!!!!  |
      | Bawmewo2i8a1w2m3732dee16ow4211  | Rid Jokerdler and Disagree!!!!  |
      | Batmwnden8w2a1msd12rge16ow4211  | Diddler and Joker Disagree!!!!! |
      | Bawmeqobi8aswmtqca2d e16ow4211! | Rid Jokerdler and Disagree!!!!  |
      | Ba1mwnde48w1r3m17326rg16do4211  | Diddler and Joker Disagree!!!!  |
      | Ba1mwnd248wBrmq7432rge16ow4211  | Diddler and Joker Disagree!!!!  |


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
      | Batmwndenww2a1m3d1ar1e1do64!11  | Diddler and Joker Disagree!!!!! |
      | Bawmeqobisaswmt3cawd1e1No64!11! | Rid Jokerdler and Disagree!!!!  |
      | Bawmewo2isaawm3373wd1e1No64!11  | Rid Jokerdler and Disagree!!!!  |
      | Ba1mwnde4wwBrm37436r1e1do64!11  | Diddler and Joker Disagree!!!!  |
      | Bawmeqobisaswmt3cawd1e1No64!11! | Rid Jokerdler and Disagree!!!!  |
