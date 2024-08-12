package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class AddMoonSteps {

    @Given("the moon, {string} does not exist")
    public void the_moon_not_exists(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        Assert.assertFalse("Moon already exists", moonExists);
    }

    @Given("the planet, {string} does not exist")
    public void the_planet_exists(String string) {
        boolean planetExists = TestRun.planetariumPage.verifyPlanetExists(string);
        Assert.assertFalse("Moon already exists", planetExists);
    }

    @Given("the moon, {string} does exist")
    public void the_moon_exists(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        Assert.assertTrue("Moon already exists", moonExists);
    }

    @Given("the planet, {string} does exist")
    public void the_planet_does_exist(String string) {
        boolean planetExists = TestRun.planetariumPage.verifyPlanetExists(string);
        Assert.assertTrue("Moon already exists", planetExists);
    }

    @When("the user navigates to moon on the dropdown menu")
    public void the_user_selects_planet_on_the_dropdown_menu() {
        TestRun.planetariumPage.selectPlanetFromDropdown();
        TestRun.planetariumPage.selectMoonFromDropdown();
    }

    @When("the user enters {string} in the moon name bar")
    public void the_user_enters_in_the_moon_name_bar(String string) {
        TestRun.planetariumPage.sendMoonNameInput(string);
    }

    @When("the user enters {string} in the orbited planet id bar")
    public void the_user_enters_in_the_orbited_planet_id_bar(String string) {
        TestRun.planetariumPage.sendOrbitedPlanetInput(string);
    }

    @When("the user adds {string} in the add image file button")
    public void the_user_adds_in_the_add_image_file_button(String string) {
        TestRun.planetariumPage.provideValidMoonImage(string);
    }

    @When("the user clicks submit moon button")
    public void the_user_clicks_submit_moon_button() {
        TestRun.planetariumPage.clickSubmitMoonButton();
    }

    @Then("the user is alerted that the moon was failed to be added")
    public void the_user_is_alerted_error(){
        try {
            Alert wait = new WebDriverWait(TestRun.driver, Duration.ofSeconds(2)).until(ExpectedConditions.alertIsPresent());
            if (wait.getText().contentEquals("Something went wrong, please try again"))
                wait.dismiss();
        }catch (TimeoutException e)
        {
            Assert.fail("Something went wrong");
        }
    }

    @Then("the user is verifies the moon, {string}, exists in table")
    public void the_user_is_displayed_with_a_new_moon_with_the_correct_inputs(String string) {

        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        boolean planetNameExists = TestRun.planetariumPage.verifyPlanetExists(string);
        boolean nameExistsInBothCelestialBodies = moonExists && planetNameExists;

        if(nameExistsInBothCelestialBodies == true)
        {
            Assert.assertFalse("There exists name both in Planet and Moon", nameExistsInBothCelestialBodies);
        }
        else if (nameExistsInBothCelestialBodies == false) {
            if (moonExists == true)
                Assert.assertTrue("Moon does not exists", moonExists);
            else if (planetNameExists == true)
                Assert.assertTrue("Name already exists in Planet", planetNameExists);
        Assert.assertTrue("Moon data is missing", moonExists);
        }
    }

    @Then("the user is verifies the moon, {string}, does not exist in table")
    public void the_user_verifies_no_moon(String string) {
        boolean moonExists = TestRun.planetariumPage.verifyMoonExists(string);
        Assert.assertFalse(string + " does exist", moonExists);
        }
    }