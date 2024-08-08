package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.junit.Before;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class DeletePlanetSteps {

    private int celestialTableSize;


    @Given("The user is logged in and on the Planetarium homepage")
    public void the_user_is_logged_in_and_on_the_Planetarium_homepage() {
        // Write code here that turns the phrase above into concrete actions

        //Should we login here?
        TestRun.startPage.goToStartPage();
        TestRun.startPage.sendUsernameInput("Batman");
        TestRun.startPage.sendPasswordInput("I am the night");
        TestRun.startPage.clickLoginButton();
        TestRun.planetariumPage.goToHomePage();
    }

    @Given("The user selects the planet dropdown")
    public void the_user_selects_the_planet_dropdown() {
        TestRun.planetariumPage.selectPlanetFromDropdown();
    }

    @When("The user provide valid name {string}")
    public void the_user_provide_valid_name(String string) {
        // Write code here that turns the phrase above into concrete actions
        TestRun.planetariumPage.sendDeleteNameInput(string);
    }

    @When("The user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        // Write code here that turns the phrase above into concrete actions
        TestRun.planetariumPage.clickDeleteButton();
        //maybe check for size here and store it in class variable?
        //this.celestialTableSize = TestRun.planetariumPage.getCelestialBodyTableSize();
    }

    @Then("The Planetarium web app should alert that {string} has been deleted")
    public void the_Planetarium_web_app_should_alert_that_has_been_deleted(String string) {
        // Write code here that turns the phrase above into concrete actions
        Assert.assertTrue(celestialTableSize > TestRun.planetariumPage.getCelestialBodyTableSize());
        //Assert.assertFalse(TestRun.homePage.checkForCelestialBody(string));

    }

}
