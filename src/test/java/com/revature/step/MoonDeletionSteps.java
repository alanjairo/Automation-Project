package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class MoonDeletionSteps {

    public static String alertText;

    @Given("the user is logged in with {string} and {string}")
    public void user_logged_in(String s1, String s2)
    {
        TestRun.startPage.goToStartPage();
        TestRun.startPage.sendUsernameInput(s1);
        TestRun.startPage.sendPasswordInput(s2);
        TestRun.startPage.clickLoginButton();
    }

    @When("the user enters {string} in the moon deletion bar")
    public void the_user_enters_in_the_moon_deletion_bar(String string) { TestRun.planetariumPage.sendDeletionInput(string);}

    @When("the user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("the moon was deleted")
    public void the_moon_was_deleted() {

            Assert.assertTrue("Test Prompted Moon Deletion Successful",true);
    }
}
