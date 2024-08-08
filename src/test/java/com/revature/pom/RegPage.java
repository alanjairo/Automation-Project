package com.revature.pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class RegPage {

    private WebDriver driver;

    @FindBy(xpath = "//*[@id=\"loginForm\"]/input[3]")
    private WebElement createButton;

    public RegPage(WebDriver driver)
    {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void clickAccountSubmitButton()
    {
        createButton.click();
    }

}
