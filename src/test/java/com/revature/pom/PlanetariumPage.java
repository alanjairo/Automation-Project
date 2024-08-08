package com.revature.pom;

import java.io.File;
import java.time.Duration;
import java.util.List;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import org.openqa.selenium.NoSuchElementException;

public class PlanetariumPage {
    private WebDriver driver;

    private String url = "http://localhost:8080/planetarium";

    private WebElement enter;

    private WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));

    // select planet or moon
    @FindBy(id = "locationSelect")
    private WebElement locationSelect;

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

    @FindBy(id = "celestialTable")
    private WebElement celestialTable;

    // page prep
    public PlanetariumPage(WebDriver driver) {
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

    public void provideValidPlanetImage(String planetImage) {
        File imageFile = new File(planetImage);
        String absolutePath = imageFile.getAbsolutePath();
        planetImageInput.sendKeys(absolutePath);
    }

    public void clickSubmitPlanetButton() {
        System.out.println("printme2");
        submitPlanetButton.click();
    }

    public boolean verifyPlanetExists(String planetName) {
        wait.until(ExpectedConditions.visibilityOf(celestialTable));

        try {
            String xpathExpression = ".//tr[td[1][text()='planet'] and td[3][text()='" + planetName + "']]";
            WebElement row = celestialTable.findElement(By.xpath(xpathExpression));

            return row != null;
        } catch (NoSuchElementException ex) {
            return false;
        }
    }

    public String getAlertText() {
        return "myString";
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

    public void provideValidMoonImage(String moonImage) {
        File imageFile = new File(moonImage);
        String absolutePath = imageFile.getAbsolutePath();
        moonImageInput.sendKeys(absolutePath);
    }

    public void sendOrbitedPlanetInput(String input) {
        orbitedPlanetId.sendKeys(input);
    }

    public void clickSubmitMoonButton() {
        submitMoonButton.click();
    }

    public boolean verifyMoonExists(String moonName) {
        wait.until(ExpectedConditions.visibilityOf(celestialTable));

        try {
            String xpathExpression = ".//tr[td[1][text()='moon'] and td[3][text()='" + moonName + "']]";
            WebElement row = celestialTable.findElement(By.xpath(xpathExpression));
            return row != null;
        } catch (NoSuchElementException ex) {
            return false;
        }
    }

    // handle pop up (temp)
    public void pressEnter() {
        enter.sendKeys(Keys.ENTER);
    }

    public void clickDeleteButton() {
        deleteButton.click();
    }

    public void sendDeletionInput(String input) {
        deleteInput.sendKeys(input);
    }

}
