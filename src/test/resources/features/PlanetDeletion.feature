@PlanetDeletion
Feature: PlanetDeletion

	Background:
		Given the user is logged in


	@SCRUM-TC-27 @JREQ-SCRUM-40
	#Positive Scenario
	Scenario Outline: Planet Remove - Positive Scenario - Pre Existing Name
		Users should be able to delete existing planets with valid inputs
		Given the user is on the Planetarium Page
		And A planet name "<Name>" exists in the Planetarium homepage
		When The user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then The planetarium web app should alert that "<Name>" has been deleted

	Examples: 2
		| Name  |
		| Earth |

	@SCRUM-TC-73 @JREQ-SCRUM-57
	#Negative Scenario
	Scenario Outline: Neg - Remove Planet - Moon Name is ID that exceeds Highest ID
		Given the user is on the Planetarium Page
		When the user selects planet from the dropdown
		When the user enters "<planet_name>" in the planet name input
		When the user chooses "<image_src>" for the planet image input
		When the user clicks the Submit Planet button
		Given a planet name "<planet_name>" is an INT higher than the highest existing ID
		When a planet name "<planet_name>" exists in the planetarium
		When the user enters "<planet_name>" in the planet deletion bar
		When the user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| planet_name | image_src |
			| 11     | src\test\resources\Celestial-Images\planet-1.jpg|

	@SCRUM-TC-29 @JREQ-SCRUM-43
	Scenario Outline: (pass) Neg - Remove Planet - Name Does Not Exist
		Given the user is on the Planetarium Page
		And A planet named "<Name>" does not exist in the Planetarium homepage
		When The user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| Name |
			| IDontExist |

	@SCRUM-TC-31 @JREQ-SCRUM-45
	Scenario Outline: (pass) Neg - Remove Planet - Name Too Long
		Given the user is on the Planetarium Page
		When the user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| Name |
			| You cant name your planet this!|

	@SCRUM-TC-32 @JREQ-SCRUM-46
	Scenario Outline: (pass) Neg - Remove Planet - Name Exists in Moon
		Given the user is on the Planetarium Page
		And a moon name "<Name>" exists in the planetarium
		When The user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| Name |
			| AnotherMoon |