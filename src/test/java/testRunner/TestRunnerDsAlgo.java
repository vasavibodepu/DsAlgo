package testRunner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;


@RunWith(Cucumber.class)
@CucumberOptions
(features="src/test/resources/features",
glue="stepDefinition",
dryRun=true,
monochrome=true,
plugin= {"pretty",
		"html:target/DSAlgoCucumberTestResults.html",}
		//"junit:target/HTMLReports/report.xml",
		//json:target/JSONReports/report.json
		//ExtentCucumberAdapter
        //io.qameta.allure.cucumber7jvm.AllureCucumber7JVM"//
		
		)
public class TestRunnerDsAlgo {

	
	

}
