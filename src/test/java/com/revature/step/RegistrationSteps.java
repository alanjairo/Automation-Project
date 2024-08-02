package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;

public class RegistrationSteps {

    public static String alertText;

    @Given("the user is on the Landing Page")
    public void the_user_is_on_the_Landing_Page() {
        TestRun.startPage.goToStartPage();
    }

    @When("the user clicks create an account")
    public void the_user_clicks_create_an_account() {
        TestRun.startPage.clickCreateAccountLink();
    }

    @When("the user enters {string} in the username bar")
    public void the_user_enters_in_the_username_bar(String string) {
        TestRun.startPage.sendUsernameInput(string);
    }

    @When("the user enters {string} in the password bar")
    public void the_user_enters_in_the_password_bar(String string) {
        TestRun.startPage.sendPasswordInput(string);
    }

    @When("the user clicks the create button")
    public void the_user_clicks_the_create_button() {
        TestRun.startPage.clickAccountSubmitButton();
    }

    @Then("the user should be prompted that an account was created")
    public void the_user_should_be_prompted_that_an_account_was_created() throws InterruptedException {

        /*
            The code here gives selenium a little bit of time to allow it to
            interact with the alert that pops up
        */

        Thread.sleep(500);
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();

        if (alertText.contains("Account creation failed"))
        {
            //System.out.println(alertText);
            Thread.sleep(500);
            alert.dismiss();
        }
        else
        {
            //System.out.println(alertText);
            Thread.sleep(500);
            alert.accept();
        }
    }

    @Then("the user should exit the prompted alert")
    public void the_user_presses_handles_alert_to_continue() {

        /*
            The code here will return true with no message
            into Cucumber and return false with a "creation failed" message
        */

        if (alertText.contains("Account creation successfully"))
        {
            Assert.assertTrue("Test Prompted Account Creation Successful",alertText.contains("Account creation successfully"));
        }
        else if (alertText.contains("Account creation failed"))
        {
            Assert.fail("Test Prompted Account Creation Failed");
        }
    }

    @Then("the user presses Enter to continue")
    public void the_user_presses_Enter_to_continue() {
        //not used at the moment, tried to use for the alert handling
        TestRun.startPage.pressEnter();
    }
}
