package testRunner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;


@RunWith(Cucumber.class)
@CucumberOptions
(features="src/test/resources/features/HomePage.feature",
glue="stepDefinition",
dryRun=true,
monochrome=true,
plugin= {"pretty",
		"html:target/DSAlgoCucumberTestResults.html"}
		)
public class TestRunnerDsAlgo {

	
	

}
