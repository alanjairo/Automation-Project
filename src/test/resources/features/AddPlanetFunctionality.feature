@AddPlanetFunctionality
Feature: Add Planet Functionality

  Scenario Outline: As a User I want to add a planet to the planetarium so that I can expand the collection of celestial bodies
  Add Planet functionality System Test for Planetarium Application
    Given the user is on the Planetarium Page
    When the user selects planet from the dropdown
    And the user enters "<validPlanetName>" in the planet name input
    And the user chooses "<validPlanetImage>" for the planet image input
    And the user clicks the Submit Planet button
    Then a planet should be added to the planetarium
    And the user should be alerted via message that a planet was added
    And the user should exit the alert message

    Examples:
      | validPlanetName | validPlanetImage                     |
      | Planet1         | src/test/resources/Celestial-Images/planet-1.jpg |
      | Planet2         | src/test/resources/Celestial-Images/planet-2.jpg |
      | Planet3         | src/test/resources/Celestial-Images/planet-3.jpg |
      | Planet4         | src/test/resources/Celestial-Images/planet-4.jpg |
      | Planet5         | src/test/resources/Celestial-Images/planet-5.jpg |