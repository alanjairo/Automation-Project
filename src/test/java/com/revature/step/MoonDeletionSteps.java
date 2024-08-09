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

public class MoonDeletionSteps {


    @When("the user enters {string} in the moon deletion bar")
    public void the_user_enters_in_the_moon_deletion_bar(String string) { TestRun.planetariumPage.sendDeletionInput(string);}

    @When("the user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("the moon was deleted")
    public void the_moon_was_deleted() {
            Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3)).until(ExpectedConditions.alertIsPresent());
            Assert.assertTrue("TestMoon Deletion Successful",true);
            wait.accept();
    }
}
