@LoginFunctionality
Feature: LoginFunctionality

	@SCRUM-TC-7 @JREQ-SCRUM-14
	Scenario Outline: As a User I want to login into the planetarium so that i can add and upload planets and moons
	As a User I want to login into the planetarium so that i can add and upload planets
  and moons
		Given the user is on the Landing Page
		When the user enters "<username>" in the username bar
		When the user enters "<password>" in the password bar
		When the user clicks login button
		Then the user should be on the planetarium page

	Examples: 
		| username | password       |
		| Batman   | I am the night |

	@SCRUM-TC-8 @JREQ-SCRUM-15
	Scenario Outline: As a User I want to login with my newly made account into the planetarium so that i can add and upload planets and moons
		Given the user is on the Landing Page
		Given the username and password were registered
		When the user enters "<username>" in the username bar
		When the user enters "<password>" in the password bar
		When the user clicks login button
		Then the user should be on the planetarium page

	Examples: 
		| username                       | password                       |
		| Batman and Robin Unite Now!!!! | Riddler and Joker Disagree!!!! |

	@SCRUM-TC-9 @JREQ-SCRUM-17
	Scenario Outline: Unsuccessful login with wrong username
	Unsuccessful login with wrong username
		Given the user is on the Landing Page
		When the user enters "<invalidUsername>" in the username bar
		And the user enters "<password>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| invalidUsername | password       |
		| Batman!         | I am the night |

	@SCRUM-TC-10 @JREQ-SCRUM-18
	Scenario Outline: Unsuccessful login with wrong password
		Given the user is on the Landing Page
		When the user enters "<username>" in the username bar
		And the user enters "<invalidPassword>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| username | invalidPassword |
		| Batman   | I am the day    |

	@SCRUM-TC-11 @JREQ-SCRUM-19
	Scenario Outline: Unsuccessful login with wrong credentials
		Given the user is on the Landing Page
		When the user enters "<invalidUsername>" in the username bar
		And the user enters "<invalidPassword>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| invalidUsername | invalidPassword |
		| Batman!         | I am the day    |

	@SCRUM-TC-12 @JREQ-SCRUM-20
	Scenario Outline: Unsuccessful login with invalid username
		Given the user is on the Landing Page
		When the user enters "<invalidUsername>" in the username bar
		And the user enters "<password>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| invalidUsername                 | password                       |
		| Gordon and Clark are friends!!! | Riddler and Joker Disagree!!!! |
		| Batman'; DROP TABLE users; --   | Riddler and Joker Disagree!!!! |

	@SCRUM-TC-13 @JREQ-SCRUM-21
	Scenario Outline: Unsuccessful login with invalid password
		Given the user is on the Landing Page
		When the user enters "<username>" in the username bar
		And the user enters "<invalidPassword>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| username                       | invalidPassword                 |
		| Batman and Robin Unite Now!!!! | Reverse Flash strikes again!!!! |

	@SCRUM-TC-14 @JREQ-SCRUM-22
	Scenario Outline: Unsuccessful login with invalid credentials
		Given the user is on the Landing Page
		When the user enters "<invalidUsername>" in the username bar
		And the user enters "<invalidPassword>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| invalidUsername                 | invalidPassword                 |
		| Gordon and Clark are friends!!! | Reverse Flash strikes again!!!! |

	@SCRUM-TC-61 @JREQ-SCRUM-101
	Scenario Outline: Negative scenario - non-matching valid username and valid password (EG)
	using a username and password that exist in the databasebut dont match with one another
		Given the user is on the Landing Page
		When the user enters "<validUsername>" in the username bar
		And the user enters "<validPassword>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| validUsername | validPassword |
		| Batman        | password      |

	@SCRUM-TC-63 @JREQ-SCRUM-102
	Scenario Outline: Unsuccessful login with SQL injection
	user will use SQL injection statement to break th software
		Given the user is on the Landing Page
		When the user enters "<invalidUsername>" in the username bar
		And the user enters "<password>" in the password bar
		And the user clicks login button
		Then the user should see an error message

	Examples: 
		| invalidUsername               | password                       |
		| Batman'; DROP TABLE users; -- | Riddler and Joker Disagree!!!! |