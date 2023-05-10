package stepDefinition;

import static org.testng.Assert.assertEquals;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.By.ByXPath;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.HomePage;
import utilities.ConfigUtils;

public class HomePageDsAlgo {
	
	WebDriver driver = ConfigUtils.getChromeWebDriver();
	public HomePage homePageObj = new HomePage(driver);
    Properties properties = ConfigUtils.loadProperties();

	@Given("The user navigates to DS Algo portal link {string}")
	public void the_user_navigates_to_ds_algo_portal_link(String URL) {
		driver.get(URL);
	}

	@When("The user clicks the Get started button")
	public void the_user_clicks_the_get_started_button() {
		homePageObj.getStartedButton();

	}

	@Then("user is redirected to Homepage")
	public void user_is_redirected_to_homepage() {
		homePageObj.validateHomePageTitle();
	}

	
	
	@Given("The user is on Home page")
	public void user_is_on_home_page() throws Exception {
		
//		String homePageURL = properties.getProperty("dsalgo.home.page");
    	
//    	System.out.println("homePageURL : " + homePageURL);
//    	driver.get(homePageURL);
    	
//		System.out.println("user_is_on_home_page getCurrentUrl : " + driver.getCurrentUrl());
//
		homePageObj.validateHomePageTitle();
	}

	@When("clicks on dropdown {string} without login")
	public void clicks_on_dropdown_without_login(String options) {
		System.out.println("clicks_on_dropdown_options_without_login::options : " + options);

		homePageObj.dataStructuresdropDownOptions(options);	
	}

	

	@Then("gets warning message {string}")
	public void gets_warning_message(String errorMessage) {
		// TODO
		
		assertEquals(errorMessage, homePageObj.getLoginErrorMessage());
	}

	@Given("The user is on HomePage")
	public void the_user_is_on_home_page() {
		
	}
	

	@When("clicks on Get started link on HomePage {string} without log in")
	public void clicks_on_get_started_link_on_home_page_without_log_in(String options) {
		System.out.println("clicks_on_dropdown_options_without_login::options : " + options);

		homePageObj.clickGetStartedBtnsHomepg(options);	
		
	}
	@Then("The user get warning message {string}")
	public void the_user_get_warning_message(String errorMessage) {
		assertEquals(errorMessage, homePageObj.getLoginErrorMessage());

	}
	
	@Given("user on home page")
	public void _user_on_home_page() {
	   
	}

	@When("user clicks Register link")
	public void user_clicks_register_link() {
		homePageObj.clickRegBtn();
	}

	@Then("user should be redirected to Registration page")
	public void user_should_be_redirected_to_registration_page() {
	    
	}

	


}
