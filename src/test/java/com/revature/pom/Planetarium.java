package com.revature.pom;

import java.io.File;
import java.util.List;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class Planetarium {
    private WebDriver driver;

    private String url = "http://localhost:8080/planetarium";

    private String validPlanetImage = "src\\test\\resources\\Celestial-Images\\planet-1.jpg";
    
    private String validMoonImage = "src\\test\\resources\\Celestial-Images\\moon-1.jpg";


    private WebElement enter;

    // select planet or moon
    @FindBy(id = "locationSelect")
    private WebElement locationSelect;

    @FindBy(xpath = "//*[@id=\"celestialTable\"]//td[3]") //should grab the planet or moon names from table
    private List<WebElement> celestialTable;

    // deletion interactions
    @FindBy(id = "deleteInput")
    private WebElement deleteInput;

    @FindBy(id = "deleteButton")
    private WebElement deleteButton;

    // planet interactions
    @FindBy(id = "planetNameInput")
    private WebElement planetNameInput;

    @FindBy(id = "planetImageInput")
    private WebElement planetImageInput;

    @FindBy(xpath = "//*[@id=\"inputContainer\"]/button")
    private WebElement submitPlanetButton;

    // moon interactions
    @FindBy(id = "moonNameInput")
    private WebElement moonNameInput;

    @FindBy(id = "moonImageInput")
    private WebElement moonImageInput;

    @FindBy(id = "orbitedPlanetInput")
    private WebElement orbitedPlanetId;

    @FindBy(xpath = "//*[@id=\"inputContainer\"]/button")
    private WebElement submitMoonButton;

    // page prep
    public Planetarium(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void goToHomePage() {
        driver.get(url);
    }

    // planet actions
    public void selectPlanetFromDropdown() {
        locationSelect.click();
        Select select = new Select(locationSelect);
        select.selectByIndex(1);
    }

    public void sendPlanetNameInput(String input) {
        planetNameInput.sendKeys(input);
    }

    public void provideValidImage() {
        File imageFile = new File(validPlanetImage);
        String absolutePath = imageFile.getAbsolutePath();
        planetImageInput.sendKeys(absolutePath);
    }

    public void clickSubmitPlanetButton() {
        submitPlanetButton.click();
    }

    public void sendInputForDeletion(String toBeDeleted) {
        deleteInput.sendKeys(toBeDeleted);
    }

    public void clickDeleteButton() {
        deleteButton.click();
    }

    // moon actions
    public void selectMoonFromDropdown() {
        locationSelect.click();
        Select select = new Select(locationSelect);
        select.selectByIndex(0);
    }

    public void sendMoonNameInput(String input) {
        moonNameInput.sendKeys(input);
    }

    public void provideValidMoonImage() {
        File imageFile = new File(validMoonImage);
        String absolutePath = imageFile.getAbsolutePath();
        moonImageInput.sendKeys(absolutePath);
    }

    public void sendOrbitedPlanetInput(String input) {
        orbitedPlanetId.sendKeys(input);
    }

    public void clickSubmitMoonButton() {
        submitMoonButton.click();
    }

    // handle pop up (temp)
    public void pressEnter() {
        enter.sendKeys(Keys.ENTER);
    }

    // check if celestial body present
    public boolean checkForCelestialBody(String body) {
        for (WebElement celestialBody : celestialTable) {
            if(celestialBody.getText().equals(body)){
                return true;
            }
        }
        return false;
    }

}
