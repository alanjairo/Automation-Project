package com.revature.step;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import com.revature.TestRun;

import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AddPlanetSteps {
    public static String alertText; // placeholder

    private static boolean isLoggedIn = false;

    @Before
    public void ensureLoggedIn() {
        if (!isLoggedIn) {
            TestRun.startPage.goToStartPage();
            TestRun.startPage.sendUsernameInput("user1");
            TestRun.startPage.sendPasswordInput("password");
            TestRun.startPage.clickLoginButton();
            isLoggedIn = true;
        }
    }

    @Given("the user is on the Planetarium Page")
    public void the_user_is_on_the_Planetarium_Page() {
        TestRun.planetariumPage.goToHomePage();
    }

    @Given("planet {string} does not exist")
    public void the_planet_does_not_exist(String string) {
        boolean planetDoesNotExist = TestRun.planetariumPage.verifyPlanetExists(string);
        assertFalse("Planet " + string + " should not exist", planetDoesNotExist);
    }

    @When("the user selects planet from the dropdown")
    public void the_user_selects_planet_from_the_dropdown() {
        TestRun.planetariumPage.selectPlanetFromDropdown();
    }

    @When("the user enters {string} in the planet name input")
    public void the_user_enters_in_the_planet_name_input(String string) {
        TestRun.planetariumPage.sendPlanetNameInput(string);
    }

    @When("the user chooses {string} for the planet image input")
    public void the_user_chooses_for_the_planet_image_input(String string) {
        TestRun.planetariumPage.provideValidPlanetImage(string);
    }

    @When("the user clicks the Submit Planet button")
    public void the_user_clicks_the_Submit_Planet_button() {
        TestRun.planetariumPage.clickSubmitMoonButton();
    }

    @Then("a planet named {string} should be added to the planetarium")
    public void a_planet_should_be_added_to_the_planetarium(String string) {
        boolean planetExists = TestRun.planetariumPage.verifyPlanetExists(string);
        assertTrue("The planet should be added", planetExists);
    }

}
