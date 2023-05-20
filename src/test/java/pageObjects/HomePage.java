package pageObjects;

import static org.testng.Assert.assertEquals;

import java.time.Duration;
import java.util.List;

import javax.print.DocFlavor.STRING;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

public class HomePage {

	By getStartedbtn = (By.xpath("//a/button[@class=\"btn\"]"));
	By registerButn = By.xpath("//a[@href='/register']");

	By dsDropdownOptions = By.xpath("//a[@class='nav-link dropdown-toggle']");
	By signInbtn = (By.xpath("//a[@href='/login']"));
	By userNameValid = (By.xpath("//input[@name='username']"));
	By passWordValid = (By.xpath("//input[@name='password']"));
	By loginbtn = (By.xpath("//input[@type='submit']"));
	//By loggedIn = (By.cssSelector("//div[@class='alert alert-primary']"));
	By loginErrorMessage = (By.xpath("//div[@class='alert alert-primary']"));

	private WebDriver driver;
	List<WebElement> optionLinks;
	int index;

	public HomePage(WebDriver driver) {
		this.driver = driver;
	}

	public void getStartedButton() {

		driver.findElement(getStartedbtn).click();

	}

	public void validateHomePageTitle() {

		String actualTitle = driver.getTitle();
		String expectedTitle = "NumpyNinja";

		assertEquals(actualTitle, expectedTitle);

	}
//		public String getHeading() {
//			String head = driver.findElement(heading).getText();
//			return head;	

	public void dataStructuresdropDownOptions(String options) {

		driver.findElement(dsDropdownOptions).click();
		selectArraryFromDropdown(options);

	}

	public void selectArraryFromDropdown(String options) {

		List<WebElement> optionLinks = driver.findElements(By.xpath("//a[@class='dropdown-item']"));

		for (WebElement webElement : optionLinks) {

			if (webElement.getText().equals(options)) {

				webElement.click();

				return;
			}
		}

//		WebElement dropdown = driver.findElement(By.xpath("//a[@href='/+"+ options +"']"));
//		Select select = new Select(dropdown);
//		
//		System.out.println("select:: : " + select);
//
//		select.selectByValue(options);

		// driver.findElement(dsDropdownOptions).click();

//		for (int i = 0; i < optionLinks.size(); i++) {
//			if (optionLinks.get(i).getText().equalsIgnoreCase("array")) {
//				optionLinks.get(i).click();
//				System.out.println(" Array is clicked ");
//				return;
//
//			}
//
//		}
	}

	public String getLoginErrorMessage() {

		System.out.println("getLoginErrorMessage : " + driver.findElement(loginErrorMessage).getText());

		return driver.findElement(loginErrorMessage).getText();

	}

	public void clickGetStartedBtnsHomepg(String options) {
		WebElement homePgGetStartedBtns = driver.findElement(By.xpath("//a[@href='" + options + "']"));
		homePgGetStartedBtns.click();

//		for (WebElement webElement : homePgGetStartedBtns) {
////
////			if (webElement.getText().equals(options)) {
////
////				webElement.click();
////
////				return;
////
////			}
////		}
	}

	public void clickSignin() {

		driver.findElement(signInbtn).click();

	}

	public void clickRegBtn() {
		driver.findElement(registerButn).click();
	}

	public void userName() {
		driver.findElement(userNameValid).sendKeys("Numpy@sdet108_1");

	}

	public void passWord() {
		driver.findElement(passWordValid).sendKeys("VP108AK@08");

	}

	public void clickLoginBtn() {
		driver.findElement(loginbtn).click();

	}
	
	public void loggedInSuccessfully() {
		WebElement loggedIn = driver.findElement(By.xpath("//div[@class='alert alert-primary']"));

		String loggedInMessage = loggedIn.getText(); 
	System.out.println(loggedInMessage);	
		
	}

	public void validateRegistrationPageTitle() {

		String actualTitle = driver.getTitle();
		String expectedTitle = "Registration";

		assertEquals(actualTitle, expectedTitle);

	}

}

//	public void registerPgTitle() {
//		if (driver.getPageSource().contains("")) {
//			Assert.assertTrue(false);
//		}else {		
//			Assert.assertEquals(title,driver.getTitle());
//}
