@PlanetDeletion
Feature: PlanetDeletion


	@SCRUM-TC-82 @JREQ-SCRUM-40
	#Positive Scenario
	Scenario Outline: Pos - Remove Planet - - Pre Existing Name
	Users should be able to delete existing planets with valid inputs
		Given The user is logged in and on the Planetarium homepage
		And A planet name "<Name>" exists in the Planetarium homepage
		When The user selects planet from the dropdown
		When the user enters "<planet_name>" in the planet deletion bar
		And The user clicks the delete button
		Then The planetarium web app should alert that "<Name>" has been deleted

	Examples: 
		| Name  |
		| Earth |

	#Negative Scenario
	Scenario Outline: Neg - Remove Planet - Moon Name is ID that exceeds Highest ID
		Given the user is on the Planetarium Page
		When the user selects planet on the dropdown menu
		When the user selects moon on the dropdown menu
		When the user enters "<planet_name>" in the moon name bar
		When the user adds "<image_src>" in the add image file button
		When the user clicks submit moon button
		When a planet name "<planet_name>" exists in the planetarium
		When the user enters "<planet_name>" in the planet deletion bar
		When the user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| planet_name | image_src |
			| 11     | src\test\resources\Celestial-Images\planet-1.jpg|