package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class LoginStep {


    @Before
    public void aRegisterdUser() {

            TestRun.startPage.goToStartPage();
            TestRun.startPage.clickCreateAccountLink();
            TestRun.startPage.sendUsernameInput("Batman and Robin Unite Now!!!!");
            TestRun.startPage.sendPasswordInput("Riddler and Joker Disagree!!!!");
            TestRun.regPage.clickAccountSubmitButton();
        WebDriverWait wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3));
        Alert alert = wait.until(ExpectedConditions.alertIsPresent());
        alert = TestRun.driver.switchTo().alert();
        String alertText = alert.getText();
        if (alertText.contains("Account creation failed")) {
            alert.dismiss();
        } else {
            alert.accept();
        }

    }




    @Given("the username and password were registered")
    public void the_user_is_on_the_Landing_Page() {

        TestRun.startPage.goToStartPage();
    }

    @Given("the user is logged in")
    public void logged_in() {
        TestRun.startPage.goToStartPage();
        TestRun.startPage.sendUsernameInput("user1");
        TestRun.startPage.sendPasswordInput("password");
        TestRun.startPage.clickLoginButton();
        TestRun.wait.until(ExpectedConditions.titleIs("Home"));
        Assert.assertEquals("Home", TestRun.driver.getTitle());
    }


    @When("the user enters {string} in the username bar1")
    public void the_user_enters_in_the_username_bar(String string) {
        System.out.println(string);
        TestRun.startPage.sendUsernameInput(string);
    }

    @When("the user enters {string} in the password bar1")
    public void the_user_enters_in_the_password_bar(String string) {
        TestRun.startPage.sendPasswordInput(string);
    }

    @When("the user clicks login button")
    public void the_user_clicks_login_button() {
        TestRun.startPage.clickLoginButton();
    }

    @Then("the user should be on the planetarium page")

    public void the_user_should_be_on_the_planetarium_page() {
        TestRun.wait.until(ExpectedConditions.titleIs("Home"));
        Assert.assertEquals("Home", TestRun.driver.getTitle());

    }

    @Then("the user should see an error message")
    public void the_user_should_see_an_alert_with_the_login_error_message() {

        WebDriverWait wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(3));
        Alert alert = wait.until(ExpectedConditions.alertIsPresent());
        alert = TestRun.driver.switchTo().alert();
        String alertText = alert.getText();
        if (alertText.contains("login attempt failed: please try again")) {
            alert.dismiss();
        } else {
            alert.accept();
        }
    }

}
