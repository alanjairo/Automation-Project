@AddPlanetFunctionality
Feature: Add Planet Functionality

  Scenario Outline: As a User I want to add a planet to the planetarium so that I can expand the collection of celestial bodies
  Add Planet functionality System Test for Planetarium Application
    Given the user is logged in
    Given the user is on the Planetarium Page
    When the user selects planet from the dropdown
    And the user enters "<planetName>" in the planet name input
    And the user chooses "<planetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then a planet named "<planetName>" should be added to the planetarium

    Examples:
      | planetName | planetImage                     |
      | Planet1         | src/test/resources/Celestial-Images/planet-1.jpg |
      | Planet2         | src/test/resources/Celestial-Images/planet-2.jpg |
      | Planet3         | src/test/resources/Celestial-Images/planet-3.jpg |
      | Planet4         | src/test/resources/Celestial-Images/planet-4.jpg |
      | Planet5         | src/test/resources/Celestial-Images/planet-5.jpg |