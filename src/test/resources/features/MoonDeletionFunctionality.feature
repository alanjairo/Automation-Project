@MoonDeletionFunctionality
Feature: moonDeletionFeature

  #Postive Scenarios
  Scenario Outline: Pos - Remove Moon -  With Pre-Existing Name
    Given the user is on the Planetarium Page
    Given a moon name "<moon_name>" exists in the planetarium
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the moon "<moon_name>" does not exist in the planetarium
    Examples:
      | moon_name |
      | Luna      |
      | Titan     |

  Scenario Outline: Pos - Remove Moon -  With Existing Name
    Given the user is on the Planetarium Page
    When the user selects planet on the dropdown menu
    When the user selects moon on the dropdown menu
    When the user enters "<moon_name>" in the moon name bar
    When the user enters "<planet_id>" in the orbited planet id bar
    When the user adds "<image_src>" in the add image file button
    When the user clicks submit moon button
    When a moon name "<moon_name>" exists in the planetarium
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the moon "<moon_name>" does not exist in the planetarium
    Examples:
      | moon_name | planet_id | image_src |
      | Dalamud     | 2         | src\test\resources\Celestial-Images\moon-1.jpg|


  #Negative Scenario
  Scenario Outline: Neg - Remove Moon - Invalid Name
    Given the user is on the Planetarium Page
    Given the moon "<moon_name>" does not exist in the planetarium
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the user was alerted to moon deletion failure
    Examples:
      | moon_name |
      | Menphina  |

  Scenario Outline: Neg - Remove Moon - Invalid Name
    Given the user is on the Planetarium Page
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the user was alerted to moon deletion failure
    Examples:
      | moon_name |
      | Lunas     |

  Scenario Outline: Neg - Remove Moon - Planet Name
    Given the user is on the Planetarium Page
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the user was alerted to moon deletion failure
    Examples:
      | moon_name |
      | Mars     |

  Scenario Outline: Neg - Remove Moon - Moon Name is ID that exceeds Highest ID
    Given the user is on the Planetarium Page
    When the user selects planet on the dropdown menu
    When the user selects moon on the dropdown menu
    When the user enters "<moon_name>" in the moon name bar
    When the user enters "<planet_id>" in the orbited planet id bar
    When the user adds "<image_src>" in the add image file button
    When the user clicks submit moon button
    When a moon name "<moon_name>" exists in the planetarium
    When the user enters "<moon_name>" in the moon deletion bar
    When the user clicks the delete button
    Then the user was alerted to moon deletion failure
    Examples:
      | moon_name | planet_id | image_src |
      | 12     | 2         | src\test\resources\Celestial-Images\moon-1.jpg|