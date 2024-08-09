package com.revature.pom;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    private WebDriver driver;

    private String url = "http://localhost:8080/";
    private  String planetarium ="http://localhost:8080/planetarium";

    private WebElement enter;

    @FindBy(xpath = "/html/body/div/form/a")
    private WebElement createAccountButton;

    @FindBy(id = "usernameInput")
    private WebElement  usernameInput;

    @FindBy(id = "passwordInput")
    private WebElement  passwordInput;

    @FindBy(xpath = "/html/body/div/form/input[3]")
    private WebElement loginButton;


    /*
        This LoginPage currently holds code for part of login page (like login url)
        but also carries code for RegistrationPage that will be made in a separate POM
        in the future updates. LoginUrl, usernameInput and passwordInput can all be reused for
        Login Page testing.
    */

    public LoginPage(WebDriver driver)
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

    public void pressEnter()
    {
        //not used at the moment, created for alert pop up handling
        enter.sendKeys(Keys.ENTER);
    }

    public void clickLoginButton()
    {
        loginButton.click();
    }
    public  void viewPlanetarium(){driver.get(planetarium);}

}
