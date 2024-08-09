@AddMoonsFunctionality
Feature: addMoonsFunctionality

  Scenario Outline: As a User I want to add moons into the Planetarium Application
  User Add Moons functionality System Test for Planetarium Application
    Given the user is logged in with "<username>" and "<password>"
    When the user selects planet on the dropdown menu
    When the user selects moon on the dropdown menu
    When the user enters "<moon name>" in the moon name bar
    When the user enters "<planet id>" in the orbited planet id bar
    When the user adds "<image src>" in the add image file button
    When the user clicks submit moon button
    Then the user is displayed with a new moon with the correct inputs


    Examples:
      | username  | password        | moon name | planet id| image src                                                                                |
      | Batman    | I am the night  | Noom      | 1        | C:\Users\Proto\Desktop\Automation-Project\src\test\resources\Celestial-Images\moon-1.jpg |
