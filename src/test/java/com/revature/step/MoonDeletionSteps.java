package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class MoonDeletionSteps {

    public static String alertText;

    @Given("a moon name {string} exists in the planetarium")
    public void a_moon_name_exists_in_the_planetarium(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        assertTrue("The moon " + string + " exists.", moonExists);
    }

    @When("the user enters {string} in the moon deletion bar")
    public void the_user_enters_in_the_moon_deletion_bar(String string) {
        TestRun.planetariumPage.sendDeletionInput(string);
    }

    @When("the user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("the moon {string} does not exist in the planetarium")
    public void the_moon_does_not_exist_in_the_planetarium(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        assertFalse("The moon should be deleted", moonExists);
    }

    @Then("the user was alerted to moon deletion failure")
    public void the_user_was_alerted_to_moon_deletion_failure() {
        Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3))
                .until(ExpectedConditions.alertIsPresent());
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();
        wait.dismiss();
        Assert.assertTrue("The user is alerted to moon deletion failure",
                alertText.contains("Failed to delete moon with name"));
    }

    @Given("a moon name {string} is an INT higher than the highest existing ID")
    public void a_moon_name_is_an_int_higher_than_the_highest_existing_ID(String string) {
        boolean highestExists = TestRun.planetariumPage.verifyHighestMoonElement(string);
        assertTrue("The moon with the highest ID " + string + " exists.", highestExists);
    }
}
