package com.revature;

import com.revature.pom.PlanetariumStartPage;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class TestRunner {
    public static WebDriver driver;

    public static WebDriverWait wait;

    public static PlanetariumStartPage startPage;

    @BeforeClass
    public static void setup() {
        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(1));
        startPage = new PlanetariumStartPage(driver);
        wait = new WebDriverWait(driver, Duration.ofSeconds(5));
    }

    @AfterClass
    public static void teardown() {
        driver.quit();
    }

    public static void main(String[] args) {
        // this is to check if you land in planetarium login
        setup();
        startPage.goToStartPage();
        System.out.println(driver.getTitle());
        teardown();
    }

}
