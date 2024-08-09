@AddPlanetFunctionality
Feature: Add Planet Functionality

  Background:
    Given the user is logged in

  # POSITIVE SCENARIOS
  Scenario Outline: Pos - Add Planet - Unique Name - with Pic
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then a planet named "<planetName>" should exist in the planetarium

    Examples:
      | planetName                     | planetImage                                      |
      | I am the planet named Mars!!!! | src/test/resources/Celestial-Images/planet-2.jpg |

  Scenario Outline: Pos - Add Planet - Unique Name - without Pic
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then a planet named "<planetName>" should exist in the planetarium

    Examples:
      | planetName                     |
      | I am the planet named Venus!!! |

  # NEGATIVE SCENARIOS - NAME NOT UNIQUE
  Scenario Outline: Neg - Add Planet - NoUnique Name (planet) - with Pic
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" should exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure

    Examples:
      | planetName          | planetImage                                      |
      | ThisNameTakenPlanet | src/test/resources/Celestial-Images/planet-1.jpg |

  Scenario Outline: Neg - Add Planet - NoUnique Name (moon) - with Pic
    Given the user is on the Planetarium Page
    And a moon named "<planetName>" should exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    Then a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName        | planetImage                                      |
      | ThisNameTakenMoon | src/test/resources/Celestial-Images/planet-1.jpg |

  Scenario Outline: Neg - Add Planet - NoUnique Name (planet) - without Pic
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" should exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure

    Examples:
      | planetName          |
      | ThisNameTakenPlanet |

  Scenario Outline: Neg - Add Planet - NoUnique Name (moon) - without Pic
    Given the user is on the Planetarium Page
    And a moon named "<planetName>" should exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    And a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName        |
      | ThisNameTakenMoon |