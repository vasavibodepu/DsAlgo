package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import org.openqa.selenium.chrome.ChromeOptions;

public class RegisterPagePom {

	By RegLink = By.linkText("Register");
	By Username = By.name("username");
	By Password1 = By.name("password1");
	By password2 = By.name("password2");
	By registerButn = By.xpath("(//input[@value='Register'])[1]");

	private WebDriver driver;

	public RegisterPagePom(WebDriver driver) {
		this.driver = driver;
	}

	public void clickReglink() {
		driver.findElement(RegLink).click();
	}

	public void setUsername(String username) {
		driver.findElement(Username).sendKeys(username);
	}

	public void setPassword(String password) {
		driver.findElement(Password1).sendKeys(password);
	}

	public void setCoinfirmpassword(String CoinfirmPassword) {
		driver.findElement(password2).sendKeys(CoinfirmPassword);
	}

	
}
