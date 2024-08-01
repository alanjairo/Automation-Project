package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class RegistrationSteps {

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
        Thread.sleep(500);
        //boolean alert = false;
        //if (ExpectedConditions.alertIsPresent() != null)
        //    alert = true;
        System.out.println(TestRun.driver.switchTo().alert().getText());
        //Assert.assertTrue(alert);
        TestRun.driver.switchTo().alert().accept();
    }

    @Then("the user presses handles alert to continue")
    public void the_user_presses_handles_alert_to_continue() {
        TestRun.startPage.handleAlert();
    }

    @Then("the user presses Enter to continue")
    public void the_user_presses_Enter_to_continue() {
        TestRun.startPage.pressEnter();
    }
}
