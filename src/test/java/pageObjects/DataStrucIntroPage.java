package pageObjects;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utilities.ExcelReader;

public class DataStrucIntroPage {
	private WebDriver driver;
	By dataStruGetStartedBtn = (By.xpath("//a[@href='data-structures-introduction']"));
	By timeComplexity = (By.xpath("//a[@href='time-complexity']"));
	By clickTryHere = (By.xpath("//a[@href='/tryEditor']"));
	By tryEditorInput = (By.xpath("//span[@role='presentation']"));
	By tryEditorRunBtn = (By.xpath("//button[@type='button']"));
	By tryEditorOutput = (By.xpath("//div[@align='left']"));

	public DataStrucIntroPage(WebDriver driver) {
		this.driver = driver;

	}

	public void dataStrucIntroTitle() {
		driver.findElement(dataStruGetStartedBtn).click();

		String actualTitle = driver.getTitle();
		String expectedTitle = "Data Structures-Introduction";

		assertEquals(actualTitle, expectedTitle);
		System.out.println("User is on Data Structures-Introduction page");

	}

	public void clickTimeComplexity() {

		driver.findElement(timeComplexity).click();

	}

	public void urlTimeComplexity() {
		String currentTimeComplexpgURL = driver.getCurrentUrl();

		assertEquals(currentTimeComplexpgURL,
				"https://dsportalapp.herokuapp.com/data-structures-introduction/time-complexity/");

		System.out.println("Navigated to TimeComplexity Page with TryHere Button");

	}

	public void clickTryHere() {

		driver.findElement(clickTryHere).click();
	}

	public void TryEditorDataStrucURL() {

		String currentTryEditorURL = driver.getCurrentUrl();
		assertEquals(currentTryEditorURL, "https://dsportalapp.herokuapp.com/tryEditor");

		System.out.println("Navigated to Try Editor Page for Data Structures-Introduction with TryHere Button");

	}

	public void verifyTryEditorDataStruc() {

		String actualTitle = driver.getTitle();
		String expectedTitle = "Assessment";

		assertEquals(actualTitle, expectedTitle);
		System.out.println(" User is on Data Structures TryEditor page");

	}

	public void runTryEditorTestCases(String csvFile) {

		WebElement focusedElement = driver.switchTo().activeElement();
		WebElement runButton = driver.findElement(tryEditorRunBtn);
		WebElement outputResult = driver.findElement(tryEditorOutput);
		ExcelReader.readWorkSheet(csvFile, focusedElement, runButton, outputResult);

	}

}
