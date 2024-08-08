@MoonDeletionFunctionality
Feature: moonDeletionFeature
  Scenario Outline: As a User I want to login with an account into the Planetarium Application and then delete a moon
    Moon Deletion functionality System Test for Planetarium Application
    Given the user is on the Planetarium Page
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the moon was deleted "<moon_name>"
    Examples:
      | moon_name |
      | Luna      |
      | Titan     |
