package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.junit.Before;
import org.openqa.selenium.Alert;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static org.junit.Assert.assertTrue;

public class DeletePlanetSteps {

    public static String alertText;

//    private static boolean isLoggedIn = false;
//
//    @Before
//    public void ensureLoggedIn() {
//        if(!isLoggedIn) {
//            TestRun.startPage.goToStartPage();
//            TestRun.startPage.sendPasswordInput("Batman");
//            TestRun.startPage.sendPasswordInput("I am the night");
//            TestRun.startPage.clickLoginButton();
//            isLoggedIn = true;
//        }
//    }


    @Given("A planet name {string} exists in the Planetarium homepage")
    public void a_planet_name_exists_in_the_Planetarium_homepage(String string) {
        // Write code here that turns the phrase above into concrete actions
        boolean planetExists = TestRun.planetariumPage.verifyPlanetExists(string);
        Assert.assertTrue(planetExists);
    }

    @When("The user selects planet from the dropdown")
    public void the_user_selects_the_planet_dropdown() {
        TestRun.planetariumPage.selectPlanetFromDropdown();
    }

    @When("the user enters {string} in the planet deletion bar")
    public void the_user_enters_in_the_planet_deletion_bar(String string) {
        TestRun.planetariumPage.sendDeletionInput(string);
    }

    @When("The user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        // Write code here that turns the phrase above into concrete actions
        TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("The planetarium web app should alert that {string} has been deleted")
    public void the_planetarium_web_app_should_alert_that_has_been_deleted(String string) {
        // Write code here that turns the phrase above into concrete actions
        Assert.assertFalse(TestRun.planetariumPage.verifyPlanetExists(string));
    }

    @Then("the user was alerted to planet deletion failure")
    public void the_user_was_alerted_to_planet_deletion_failure() {
        Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3))
                .until(ExpectedConditions.alertIsPresent());
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();
        wait.dismiss();
        Assert.assertTrue("The user is alerted to planet deletion failure", alertText.contains("Failed to delete planet with name"));
    }

    @When("a planet name {string} exists in the planetarium")
    public void a_planet_name_exists_in_the_planetarium(String string) {
        boolean planetExists = TestRun.planetariumPage.verifyPlanetExists(string);
        assertTrue("The planet " + string + " exists.", planetExists);
    }

    @Given("A planet named {string} does not exist in the Planetarium homepage")
    public void a_planet_named_does_not_exist_in_the_Planetarium_homepage(String string) {
        Assert.assertFalse(TestRun.planetariumPage.verifyPlanetExists(string));
    }
    @Given("a planet name {string} is an INT higher than the highest existing ID")
    public void a_planet_name_is_an_int_higher_than_the_highest_existing_ID(String string) {
        boolean highestExists = TestRun.planetariumPage.verifyHighestPlanetElement(string);
        assertTrue("The moon with the highest ID " + string + " exists.", highestExists);
    }

}
