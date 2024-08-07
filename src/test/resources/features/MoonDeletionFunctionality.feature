@MoonDeletionFunctionality
Feature: searchFunctionality
  Scenario Outline: As a User I want to login with an account into the Planetarium Application and then delete a moon
  Moon Deletion functionality System Test for Planetarium Application
    Given the user is on the Landing Page
    When the user enters "<username>" in the username bar
    When the user enters "<password>" in the password bar
    When the user clicks the login button
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the moon was deleted
    Examples:
      | username | password | moon_name |
      | Batman!| I am the night! | Luna |
