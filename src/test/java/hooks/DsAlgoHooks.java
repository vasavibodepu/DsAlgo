package hooks;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.WebDriver;

import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import utilities.ConfigUtils;

public class DsAlgoHooks {
    private boolean runScenario = true;
    Properties properties = new Properties();

    @Before
    public void loadProperties() {
        try {
            FileInputStream fileInputStream = new FileInputStream("src/test/resources/config.properties");
            properties.load(fileInputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    @Before("@isUserOnHomePage")
    public void beforeScenario(Scenario scenario) {
        if (runScenario) {
            System.out.println("Executing Scenario: " + scenario.getName());
        	loadProperties();
            // Perform any necessary setup or actions before the scenario
            // For example, setup data, initialize resources, etc.
        	WebDriver driver = ConfigUtils.getChromeWebDriver();
        	String homePageURL = properties.getProperty("dsalgo.home.page");
        	
        	System.out.println("homePageURL : " + homePageURL);
        	driver.get(homePageURL);
        	
        	runScenario = false;
            
        }
    }
}
