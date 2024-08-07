package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DeletePlanetSteps {

    @Given("The user is logged in and on the Planetarium homepage")
    public void the_user_is_logged_in_and_on_the_Planetarium_homepage() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
        //Should we login here?
    }

    @Given("The user selects the planet dropdown")
    public void the_user_selects_the_planet_dropdown() {
        TestRun.homePage.selectPlanetFromDropdown();
    }

    @When("The user provide valid name {string}")
    public void the_user_provide_valid_name(String string) {
        // Write code here that turns the phrase above into concrete actions
        TestRun.homePage.sendInputForDeletion(string);
    }

    @When("The user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
        // Write code here that turns the phrase above into concrete actions
        TestRun.homePage.clickDeleteButton();
    }

    @Then("The Planetarium web app should alert that the planet has been deleted")
    public void the_Planetarium_web_app_should_alert_that_the_planet_has_been_deleted() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
        //find the table in xpath, grab all table rows
        //check if td[3] in each tr contains the name
        //assert that it's not there
    }

}
