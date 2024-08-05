package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginStep {
    /*
    i put 1 at the end of all of these becuase i forgot what to d when we have multiple steps
     */

    @Given("the user is on the Landing Page1")
    public void the_user_is_on_the_Landing_Page() {
        TestRun.startPage.goToStartPage();
    }

    @When("the user enters {string} in the username bar1")
    public void the_user_enters_in_the_username_bar(String string) {
        TestRun.startPage.sendUsernameInput(string);
    }

    @When("the user enters {string} in the password bar1")
    public void the_user_enters_in_the_password_bar(String string) {
        TestRun.startPage.sendPasswordInput(string);
    }

    @When("the user clicks login button")
    public void the_user_clicks_login_button() {TestRun.startPage.clickLoginButton();}

    @Then("the user should be on the planetarium page")
    public void the_user_should_be_on_the_planetarium_page() {TestRun.startPage.viewPlanetarium();}

}
