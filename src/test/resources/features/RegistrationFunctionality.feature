@RegistrationFunctionality
Feature: registrationFunctionality

  #Positive Scenario
  @SCRUM-TC-1 @JREQ-SCRUM-5
  Scenario Outline: Registration - Positive Scenario - Valid Inputs
  given a valid username and password a user should be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account created alert

    Examples:
      | username                       | password                       |
      | I am Batman hear me roar!!!!!! | Middler and Poker Disagree!!!! |

  #Negative Scenarios
  @SCRUM-TC-2 @JREQ-SCRUM-7
  Scenario Outline: Registration - Negative Scenario - Username not Unique
  given an non-unique username and valid password a user should not be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username | password       |
      | Batman   | I am the night |

  @SCRUM-TC-3 @JREQ-SCRUM-8
  Scenario Outline: Registration - Negative Scenario - Username too long
  given a too long username and valid password a user should not be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username                        | password                       |
      | $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ | Pillow and Bed do Disagree!!!! |

  @SCRUM-TC-4 @JREQ-SCRUM-9
  Scenario Outline: Registration - Negative Scenario - Password too long
  given a valid username and too long password a user should not be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username                       | password                        |
      | !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! | Diddler and Woker Disagree!!!!! |

  @SCRUM-TC-5 @JREQ-SCRUM-10
  Scenario Outline: Registration - Negative Scenario - Credentials too long
  given a too long username and too long password a user should not be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username                        | password                        |
      | I am Robin hear me roar!!!!!!!! | Road Rollarrrrrrrrrrrrrrrr!!!!! |

  @SCRUM-TC-6 @JREQ-SCRUM-11
  Scenario Outline: Registration - Negative Scenario - Username not Unique and Password too long
  given an non-unique username and valid password a user should not be able to register with the Planetarium Application
    Given the user is on the Landing Page
    When the user clicks create an account
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the create button
    Then the user should be prompted that an account status
    Then the user should exit the prompted account not created alert

    Examples:
      | username | password                        |
      | Batman   | Middler and Poker Disagree!!!!! |