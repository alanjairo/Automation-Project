package com.revature.pom;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PlanetariumStartPage {
    private WebDriver driver;

    private String url = "http://localhost:8080/";

    private WebElement enter;

    @FindBy(xpath = "/html/body/div/form/a")
    private WebElement createAccountButton;

    @FindBy(id = "usernameInput")
    private WebElement  usernameInput;

    @FindBy(id = "passwordInput")
    private WebElement  passwordInput;

    @FindBy(xpath = "//*[@id=\"loginForm\"]/input[3]")
    private WebElement createButton;

    @FindBy(xpath = "/html/body/div/form/input[3]")
    private WebElement loginButton;

    public PlanetariumStartPage(WebDriver driver)
    {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void goToStartPage(){
        driver.get(url);
    }

    public void clickCreateAccountLink()
    {
        createAccountButton.click();
    }

    public void sendUsernameInput(String input)
    {
        usernameInput.sendKeys(input);
    }

    public void sendPasswordInput(String input)
    {
        passwordInput.sendKeys(input);
    }

    public void clickAccountSubmitButton()
    {
        createButton.click();
    }

    public void handleAlert()
    {
        driver.switchTo().alert().accept();
    }

    public void pressEnter()
    {
        enter.sendKeys(Keys.ENTER);
    }

    public void clickLoginButton()
    {
        loginButton.click();
    }

}
