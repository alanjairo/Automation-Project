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
        assertTrue("The moon " + string + "exists.", moonExists);
    }

    @When("the user enters {string} in the moon deletion bar")
    public void the_user_enters_in_the_moon_deletion_bar(String string) { TestRun.planetariumPage.sendDeletionInput(string);}

    @When("the user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("the moon was deleted {string}")
    public void the_moon_was_deleted(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        assertFalse("The moon should be deleted", moonExists);
    }


    @Then("the user was altered to moon deletion failure")
    public void the_user_was_altered_to_moon_deletion_failure() {
        Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3))
                .until(ExpectedConditions.alertIsPresent());
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();
        wait.dismiss();
        Assert.assertTrue("The user is alerted to moon deletion failure", alertText.contains("Failed to delete moon with name"));
    }
}
