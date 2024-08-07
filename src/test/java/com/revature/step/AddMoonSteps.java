package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AddMoonSteps {

    @When("the user selects planet on the dropdown menu")
    public void the_user_selects_planet_on_the_dropdown_menu() {
        TestRun.homePage.selectPlanetFromDropdown();
    }

    @When("the user selects moon on the dropdown menu")
    public void the_user_selects_moon_on_the_dropdown_menu() {
        TestRun.homePage.selectMoonFromDropdown();
    }

    @When("the user enters {string} in the moon name bar")
    public void the_user_enters_in_the_moon_name_bar(String string) {
        TestRun.homePage.sendMoonNameInput(string);
    }

    @When("the user enters {string} in the orbited planet id bar")
    public void the_user_enters_in_the_orbited_planet_id_bar(String string) {
        TestRun.homePage.sendOrbitedPlanetInput(string);
    }


    @When("the user adds {string} in the add image file button")
    public void the_user_adds_in_the_add_image_file_button(String string) {
        TestRun.homePage.provideValidMoonImage();
    }

    @When("the user clicks submit moon button")
    public void the_user_clicks_submit_moon_button() {
        TestRun.homePage.clickSubmitMoonButton();
    }

    @Then("the user is displayed with a new moon with the correct inputs")
    public void the_user_is_displayed_with_a_new_moon_with_the_correct_inputs() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

}
