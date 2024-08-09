@PlanetDeletion
Feature: PlanetDeletion


	@SCRUM-TC-82 @JREQ-SCRUM-40
	Scenario Outline: Planet Remove - Positive Scenario - Pre Existing Name
		Users should be able to delete existing planets with valid inputs
		Given The user is logged in and on the Planetarium homepage
		And A planet name "<Name>" exists in the Planetarium homepage
		When The user selects planet from the dropdown
		When The user provides name "<Name>" in deletion box
		And The user clicks the delete button
		Then The Planetarium web app should alert that "<Name>" has been deleted

		Examples:
			| Name  |
			| Earth |