@AddMoonsFunctionality
Feature: addMoonsFunctionality

  Scenario Outline: As a User I want to add moons into the Planetarium Application
    User Add Moons functionality System Test for Planetarium Application
    Given the user is logged in with "<username>" and "<password>"
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    When the user enters "<moon name>" in the moon name bar
    When the user enters "<planet id>" in the orbited planet id bar
    When the user adds "<image src>" in the add image file button
    When the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table


    Examples:
      | username | password       | moon name | planet id | image src                                      |
      | Batman   | I am the night | Noom      | 1         | src/test/resources/Celestial-Images/moon-1.jpg |
      | Batman   | I am the night | Luna      | 1         | src/test/resources/Celestial-Images/moon-2.jpg |
      | Batman   | I am the night | Mona      | 2         | src/test/resources/Celestial-Images/moon-3.jpg |
      | Batman   | I am the night | Earth     | 3         | src/test/resources/Celestial-Images/moon-4.jpg |
      | Batman   | I am the night | Moona     | 4         | src/test/resources/Celestial-Images/moon-4.jpg |

  Scenario Outline: As a User I want to add moons into the Planetarium Application without an Image
  User Add Moons functionality System Test for Planetarium Application
    Given the user is logged in with "<username>" and "<password>"
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    When the user enters "<moon name>" in the moon name bar
    When the user enters "<planet id>" in the orbited planet id bar
    When the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table


    Examples:
      | username | password       | moon name | planet id |
      | Batman   | I am the night | Numa      | 1         |
      | Batman   | I am the night | Noom      | 2         |
      | Batman   | I am the night | Luna      | 3         |
      | Batman   | I am the night | Moona     | 3         |
      | Batman   | I am the night | Manus     | 4         |