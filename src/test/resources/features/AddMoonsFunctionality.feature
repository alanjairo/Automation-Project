@AddMoonsFunctionality
Feature: AddMoonsFunctionality

  #Positive Scenarios
  @SCRUM-TC-33 @JREQ-SCRUM-49
  Scenario Outline: Pos - Add Moon - Valid Inputs
  Users should be able to add Moons with valid inputs
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table

    Examples:
      | moon name                      | image src                                      | planet id |
      | I am the Moon named Noom!!!!!! | src/test/resources/Celestial-Images/moon-1.jpg | 1         |

  @SCRUM-TC-34 @JREQ-SCRUM-50
  Scenario Outline: Pos - Add Moon - Valid Inputs - No Image
  Users should be able to add Moons with valid inputs without image
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is verifies the moon, "<moon name>", exists in table

    Examples:
      | moon name                      | planet id |
      | I am the Moon named Numa!!!!!! | 1         |

  #Negative Scenarios
  @SCRUM-TC-35 @JREQ-SCRUM-52
  Scenario Outline: Neg - Add Moon - Not Unique - Valid Image Size - Valid ID
  Users should not be able to add moons with invalid inputs
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name                      | planet id | image src                                      |
      | I am the Moon named Noom!!!!!! | 1         | src/test/resources/Celestial-Images/moon-2.jpg |

  @SCRUM-TC-36 @JREQ-SCRUM-53
  Scenario Outline: Neg - Add Moon - Name Too Long - Valid Image Size - Valid ID
  Users should not be able to add moons with too long name
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | image src                                      | planet id |
      | I am the Moon named Numa!!!!!!! | src/test/resources/Celestial-Images/moon-2.jpg | 1         |

  @SCRUM-TC-37 @JREQ-SCRUM-54
  Scenario Outline: Neg - Add Moon - Name Not Unique - No Image - Valid ID
  Users should not be able to add moons with non unique name
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id |
      | Luna      | 1         |

  @SCRUM-TC-38 @JREQ-SCRUM-55
  Scenario Outline: Neg - Add Moon - Name Too Long - No Image - Valid ID
  Users should not be able to add moons with too long name
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id |
      | I am the Moon named Numa!!!!!!! | 1         |

  @SCRUM-TC-39 @JREQ-SCRUM-56
  Scenario Outline: Neg - Add Moon - Name is Unique - Too Large Image Size - Valid ID
  Users should not be able to add moons with invalid inputs
    Given the user is logged in
    And the moon, "<moon name>" does not exist
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

  @SCRUM-TC-40 @JREQ-SCRUM-57
  Scenario Outline: Neg - Add Moon - Name Not Unique - Too Large Image Size - Valid ID
  Users should not be able to add moons with invalid inputs
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                         |
      | Luna      | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  @SCRUM-TC-41 @JREQ-SCRUM-58
  Scenario Outline: Neg - Add Moon - Name Too Long - Too Large Image Size - Valid ID
  Users should not be able to add moons with invalid inputs
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                            | planet id | image src                                                 |
      | I am the Moon named Numa!!!!!!! | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  @SCRUM-TC-42 @JREQ-SCRUM-59
  Scenario Outline: Neg - Add Moon - Name from Planet - Valid Image Size - Valid ID
  Users should not be able to add moons with plane name
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
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

  @SCRUM-TC-43 @JREQ-SCRUM-60
  Scenario Outline: Neg - Add Moon - Name from Planet - Too Large Image Size - Valid ID
  Users should not be able to add moons with planet name
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id | image src                                         |
      | Mars      | 1         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  @SCRUM-TC-44 @JREQ-SCRUM-61
  Scenario Outline: Neg - Add Moon - Name from planet - No Image - Valid ID
  Users should not be able to add moons with planet name
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name           | planet id |
      | ThisNameTakenPlanet | 1         |

  @SCRUM-TC-51 @JREQ-SCRUM-71
  Scenario Outline: Neg - Add Moon - Name Not Unique - Valid Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                      |
      | Luna      | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  @SCRUM-TC-52 @JREQ-SCRUM-72
  Scenario Outline: Neg - Add Moon - Name Too Long - Valid Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id | image src                                      |
      | I am the Moon named Numa!!!!!!! | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  @SCRUM-TC-53 @JREQ-SCRUM-73
  Scenario Outline: Neg - Add Moon - Name Not Unique - No Image - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name         | planet id |
      | ThisNameTakenMoon | 9         |

  @SCRUM-TC-54 @JREQ-SCRUM-74
  Scenario Outline: Neg - Add Moon - Name Too Long - No Image - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id |
      | I am the Moon named Numa!!!!!!! | Invalid   |

  @SCRUM-TC-55 @JREQ-SCRUM-75
  Scenario Outline: Neg - Add Moon - Name is Unique - Too Large Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
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

  @SCRUM-TC-56 @JREQ-SCRUM-76
  Scenario Outline: Neg - Add Moon - Name Not Unique - Too Large Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added

    Examples:
      | moon name | planet id | image src                                         |
      | Luna      | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  @SCRUM-TC-57 @JREQ-SCRUM-77
  Scenario Outline: Neg - Add Moon - Name Too Long - Too Large Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name                       | planet id | image src                                         |
      | I am the Moon named Numa!!!!!!! | 9         | src/test/resources/Celestial-Images/CVYE1271.JPEG |

  @SCRUM-TC-58 @JREQ-SCRUM-78
  Scenario Outline: Neg - Add Moon - Name from Planet - Valid Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user adds "<image src>" in the add image file button
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name           | planet id | image src                                      |
      | ThisNameTakenPlanet | 9         | src/test/resources/Celestial-Images/moon-2.jpg |

  @SCRUM-TC-59 @JREQ-SCRUM-79
  Scenario Outline: Neg - Add Moon - Name from Planet - Too Large Image Size - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
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

  @SCRUM-TC-60 @JREQ-SCRUM-80
  Scenario Outline: Neg - Add Moon - Name from planet - No Image - Invalid ID
  Users should not be able to add moon with invalid inputs and invalid id
    Given the user is logged in
    And the moon, "<moon name>" does not exist
    And the planet, "<moon name>" does exist
    When the user navigates to moon on the dropdown menu
    And the user enters "<moon name>" in the moon name bar
    And the user enters "<planet id>" in the orbited planet id bar
    And the user clicks submit moon button
    Then the user is alerted that the moon was failed to be added
    And the user is verifies the moon, "<moon name>", does not exist in table

    Examples:
      | moon name | planet id |
      | Mars      | 9         |