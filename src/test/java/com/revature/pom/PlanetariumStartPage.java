package com.revature.pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class PlanetariumStartPage {
    private WebDriver driver;

    String url = "http://localhost:8080/";

    public PlanetariumStartPage(WebDriver driver)
    {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void goToStartPage(){
        driver.get(url);
    }
}
