@AddMoonsFunctionality
Feature: addMoonsFunctionality

  Background:
    Given the user is logged in

  # Positive Scenarios
  # Valid Inputs
  Scenario Outline: Pos - Add Moons - Valid Inputs
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table


    Examples:
      | moon name                      | planet id | image src                                      |
      | I am the Moon named Noom!!!!!! | 1         | src/test/resources/Celestial-Images/moon-1.jpg |

  # Valid Inputs - No Image
  Scenario Outline: Pos - Add Moon - Valid Inputs - No Image
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table


    Examples:
      | moon name                      | planet id |
      | I am the Moon named Numa!!!!!! | 1         |

  #Nagetive Scenarios
  #Name Not Unique - Valid Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Not Unique - Valid Image Size - Valid ID
  Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name                      | planet id | image src                                      |
      | I am the Moon named Noom!!!!!! | 1         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name Too Long - Valid Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - Valid Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id | image src                                      |
      | I am the Moon named Numa!!!!!!! | 1         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name Not Unique - No Image - Valid ID
  Scenario Outline: Neg - Add Moon - Name Not Unique - No Image - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added


    Examples:
      | moon name | planet id |
      | Luna      | 1         |

  #Name Too Long - No Image - Valid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - No Image - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id |
      | I am the Moon named Numa!!!!!!! | 1         |

  #Name is Unique - Too Large Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name is Unique - Too Large Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id | image src                                         |
      | Noom      | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name Not Unique - Too Large Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name Not Unique - Too Large Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                         |
      | Luna      | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name Too Long - Too Large Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - Too Large Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id | image src                                         |
      | I am the Moon named Numa!!!!!!! | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name from Planet - Valid Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name from Planet - Valid Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id | image src                                      |
      | Earth     | 1         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name from Planet - Too Large Image Size - Valid ID
  Scenario Outline: Neg - Add Moon - Name from Planet - Too Large Image Size - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name  | planet id | image src                                         |
      | Mars       | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

    #Name from planet - No Image - Valid ID
  Scenario Outline: Neg - Add Moon - Name from planet - No Image - Valid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table


    Examples:
      | moon name               | planet id |
      | ThisNameTakenPlanet     | 4         |

  #Name Not Unique - Valid Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Not Unique - Valid Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                      |
      | Luna      | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name Too Long - Valid Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - Valid Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                            | planet id | image src                                      |
      | I am the Moon named Numa!!!!!!!      | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name Not Unique - No Image - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Not Unique - No Image - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name             | planet id |
      | ThisNameTakenMoon     | 9         |

  #Name Too Long - No Image - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - No Image - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                           | planet id |
      | I am the Moon named Numa!!!!!!!     | 9         |

  #Name is Unique - Too Large Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name is Unique - Too Large Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id | image src                                         |
      | Lunar     | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name Not Unique - Too Large Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Not Unique - Too Large Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                         |
      | Luna      | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name Too Long - Too Large Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name Too Long - Too Large Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                            | planet id | image src                                         |
      | I am the Moon named Numa!!!!!!!      | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name from Planet - Valid Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name from Planet - Valid Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                | planet id | image src                                      |
      | ThisNameTakenPlanet      | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  #Name from Planet - Too Large Image Size - Invalid ID
  Scenario Outline: Neg - Add Moon - Name from Planet - Too Large Image Size - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id | image src                                         |
      | Mars      | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  #Name from planet - No Image - Invalid ID
  Scenario Outline: Neg - Add Moon - Name from planet - No Image - Invalid ID
  User Add Moons functionality System Test for Planetarium Application
    Given the moon, "<moon name>" does not exist
    Given the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table


    Examples:
      | moon name | planet id |
      | Mars      | 9         |