@PlanetDeletion
Feature: PlanetDeletion

	Background:
		Given the user is logged in


	@SCRUM-TC-82 @JREQ-SCRUM-40
	#Positive Scenario
	Scenario Outline: Planet Remove - Positive Scenario - Pre Existing Name
		Users should be able to delete existing planets with valid inputs
		Given the user is on the Planetarium Page
		And A planet name "<Name>" exists in the Planetarium homepage
		When The user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
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


	Scenario Outline: (pass) Neg - Remove Planet - Name Too Long
		Given the user is on the Planetarium Page
		When the user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| Name |
			| You cant name your planet this!|

	Scenario Outline: (pass) Neg - Remove Planet - Name Exists in Moon
		Given the user is on the Planetarium Page
		And a moon name "<Name>" exists in the planetarium
		When The user selects planet from the dropdown
		When the user enters "<Name>" in the planet deletion bar
		And The user clicks the delete button
		Then the user was alerted to planet deletion failure
		Examples:
			| Name |
			| Titan |