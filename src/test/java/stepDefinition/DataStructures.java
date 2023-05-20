package stepDefinition;

import java.util.Properties;

import org.openqa.selenium.WebDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.DataStrucIntroPage;
import pageObjects.HomePage;
import utilities.ConfigUtils;

public class DataStructures {

	WebDriver driver = ConfigUtils.getChromeWebDriver();
	Properties properties = ConfigUtils.loadProperties();

	public HomePage homePageObj = new HomePage(driver);

	public DataStrucIntroPage DataStrucIntro = new DataStrucIntroPage(driver);

	@Given("user is on sign in page")
	public void user_is_on_sign_in_page() {
		driver.get("https://dsportalapp.herokuapp.com/home");
		homePageObj.clickSignin();
	}

	@When("the valid username and password are given")
	public void the_valid_username_and_password_are_given() {
		homePageObj.userName();
		homePageObj.passWord();
		homePageObj.clickLoginBtn();

	}

	@Then("logged in succesfully")
	public void logged_in_succesfully() {

		homePageObj.loggedInSuccessfully();

	}

	@Given("The user is on the Data Structures Introduction page")
	public void the_user_is_on_the_data_structures_introduction_page() {
		DataStrucIntro.dataStrucIntroTitle();
	}

	@When("The user clicks Time Complexity link")
	public void the_user_clicks_time_complexity_link() {
		DataStrucIntro.clickTimeComplexity();
	}

	@Then("The user should be redirected to Time Complexity page")
	public void the_user_should_be_redirected_to_page() {
		DataStrucIntro.urlTimeComplexity();
	}

	@Given("The user is on the Time Complexity Page")
	public void the_user_is_on_the_time_complexity_page() {
		DataStrucIntro.urlTimeComplexity();

	}

	@When("The user clicks Try Here button on Time Complexity page")
	public void the_user_clicks_button_on_page() {
		DataStrucIntro.clickTryHere();
	}

	@Then("User should land on Try Editor Page")
	public void user_should_land_on_try_editor_page() {
		DataStrucIntro.TryEditorDataStrucURL();
	}


	@Given("user is on a tryEditor page")
	public void user_is_on_a_try_editor_page() {
		DataStrucIntro.verifyTryEditorDataStruc();

	}

	@Then("run all the testcases in the test data {string}")
	public void run_all_the_testcases_in_the_test_data(String csvFile) {
		// Write code here that turns the phrase above into concrete actions
		DataStrucIntro.runTryEditorTestCases(csvFile);

	}

	@When("The user enter invalid python code in tryEditor")
	public void the_user_enter_invalid_python_code_in_try_editor() {

	}

	@Then("The user should get message Dialogue box {string}")
	public void the_user_should_get_message_dialogue_box(String string) {

	}

	@Given("The user is in a page having an tryEditor with a Run button to test")
	public void the_user_is_in_a_page_having_an_try_editor_with_a_run_button_to_test() {

	}

	@When("The user enter python code with invalid syntax in tryEditor from sheet {string} and <{int}>")
	public void the_user_enter_python_code_with_invalid_syntax_in_try_editor_from_sheet_and(String string,
			Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@When("user clicks on run button")
	public void user_clicks_on_run_button() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("The user should be presented with error message")
	public void the_user_should_be_presented_with_error_message() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

}
