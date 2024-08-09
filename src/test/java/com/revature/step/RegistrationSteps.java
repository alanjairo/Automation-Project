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

public class RegistrationSteps {

    public static String alertText;

    @Given("the user is on the Landing Page")
    public void the_user_is_on_the_Landing_Page() {
        TestRun.startPage.goToStartPage();
    }

    @Given("the user is logged in with {string} and {string}")
    public void user_logged_in(String s1, String s2) {
        TestRun.startPage.goToStartPage();
        TestRun.startPage.sendUsernameInput(s1);
        TestRun.startPage.sendPasswordInput(s2);
        TestRun.startPage.clickLoginButton();
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
        TestRun.regPage.clickAccountSubmitButton();
    }

    @Then("the user should be prompted that an account status")
    public void the_user_should_be_prompted_that_an_account_was_created() throws InterruptedException {

        /*
         * The code here gives selenium a little bit of time to allow it to
         * interact with the alert that pops up
         */

        Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3))
                .until(ExpectedConditions.alertIsPresent());
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();
        if (alertText.contains("Account creation failed")) {
            wait.dismiss();
        } else {
            wait.accept();
        }
    }

    @Then("the user should exit the prompted account created alert")
    public void the_user_presses_handles_alert_to_continue() {

        /*
         * The code here will return true with no message
         * into Cucumber and return false with a "creation failed" message
         */

        if (alertText.contains("Account created successfully")) {
            Assert.assertTrue("Account Creation Failed", alertText.contains("Account created successfully"));
        } else if (alertText.contains("Account creation failed")) {
            Assert.fail("Test Prompted Account Creation Failed");
        }
    }

    @Then("the user should exit the prompted account not created alert")
    public void the_user_exits_handles_alert_to_continue() {
        Assert.assertTrue("Test Prompted Account Creation Successful", alertText.contains("Account creation failed"));
    }
}
