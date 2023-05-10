package utilities;

import java.io.FileInputStream;
import java.io.IOException;
import java.time.Duration;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.By.ByXPath;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class ConfigUtils {

	private static WebDriver driver;

	public static WebDriver getChromeWebDriver() {

		if (driver == null) {

			ChromeOptions co = new ChromeOptions();
			co.addArguments("--remote-allow-origins=*");
			co.setAcceptInsecureCerts(true);

			driver = new ChromeDriver(co);
		}
		
		return driver;

	}

	public static Properties loadProperties() {
		Properties properties = new Properties();

		try {
			FileInputStream fileInputStream = new FileInputStream("src/test/resources/config.properties");
			properties.load(fileInputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return properties;
	}

//	public static void loadDsAlgoapp(WebDriver driver) throws Exception {
//
//		if (driver == null) {
//			throw new Exception ("Driver cannot be null");
//		}
//
//		driver.manage().window().maximize();
//		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
//
//		driver.get("https://dsportalapp.herokuapp.com");
//
//		// a/button[@class="btn"]
//
//	}

}