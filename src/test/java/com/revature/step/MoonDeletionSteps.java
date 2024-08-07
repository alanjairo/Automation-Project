package com.revature.step;

import com.revature.TestRun;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;

public class MoonDeletionSteps {

    public static String alertText;


    @When("the user enters {string} in the moon deletion bar")
    public void the_user_enters_in_the_moon_deletion_bar(String string) {
        //TestRun.planetariumPage.sendDeletionInput(string);
        }

    @When("the user clicks the delete button")
    public void the_user_clicks_the_delete_button() {
      //  TestRun.planetariumPage.clickDeleteButton();
    }

    @Then("the user should be prompted that a moon was deleted")
    public void the_user_should_be_prompted_that_an_account_was_created() throws InterruptedException {

        /*
            The code here gives selenium a little bit of time to allow it to
            interact with the alert that pops up
        */

        Thread.sleep(500);
        Alert alert = TestRun.driver.switchTo().alert();
        alertText = alert.getText();

        if (alertText.contains("Failed to delete moon with name"))
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
        if (alertText.contains("Failed to delete moon with name"))
        {
            Assert.fail("Test Prompted Account Creation Failed");
        }
        else
        {
            Assert.assertTrue("Test Prompted Moon Deletion Successful",true);
        }
    }
}
