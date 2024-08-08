@AddPlanetFunctionality
Feature: Add Planet Functionality

  Background:
    Given the user is logged in

  # POSITIVE SCENARIOS
  Scenario Outline: Pos - Add Planet - Name Unique - Pic Valid
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then a planet named "<planetName>" exists in the planetarium

    Examples:
      | planetName                     | planetImage                                      |
      | I am the planet named Mars!!!! | src/test/resources/Celestial-Images/planet-2.jpg |

  Scenario Outline: Pos - Add Planet - Name Unique - Pic Empty
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then a planet named "<planetName>" exists in the planetarium

    Examples:
      | planetName                     |
      | I am the planet named Venus!!! |

  # NEGATIVE SCENARIOS - NAME NOT UNIQUE
  Scenario Outline: Neg - Add Planet - Name Not Unique (planet) - Pic Valid
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" exists in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure

    Examples:
      | planetName          | planetImage                                      |
      | ThisNameTakenPlanet | src/test/resources/Celestial-Images/planet-1.jpg |

  Scenario Outline: Neg - Add Planet - Name Not Unique (moon) - Pic Valid
    Given the user is on the Planetarium Page
    And a moon name "<planetName>" exists in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    Then a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName        | planetImage                                      |
      | ThisNameTakenMoon | src/test/resources/Celestial-Images/planet-1.jpg |

  Scenario Outline: Neg - Add Planet - Name Not Unique (planet) - Pic Empty
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" exists in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure

    Examples:
      | planetName          |
      | ThisNameTakenPlanet |

  Scenario Outline: Neg - Add Planet - Name Not Unique (moon) - Pic Empty
    Given the user is on the Planetarium Page
    And a moon name "<planetName>" exists in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    And a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName        |
      | ThisNameTakenMoon |

  # NEGATIVE SCENARIOS - NAME TOO LONG
  Scenario Outline: Neg - Add Planet - Name Too Long - Pic Valid
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    And a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName                      | planetImage                                      |
      | I am the planet named Mars!!!!+ | src/test/resources/Celestial-Images/planet-1.jpg |

  Scenario Outline: Neg - Add Planet - Name Too Long - Pic Empty
    Given the user is on the Planetarium Page
    And a planet named "<planetName>" does not exist in the planetarium
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user clicks the Submit Planet button
    Then the user is alerted to planet add failure
    And a planet named "<planetName>" does not exist in the planetarium

    Examples:
      | planetName                      |
      | I am the planet named Venus!!!+ |