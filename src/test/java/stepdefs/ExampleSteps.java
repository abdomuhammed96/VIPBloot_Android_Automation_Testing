package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.SamplePage.SampleAbstract;
import pages.SamplePage.SampleLogicAndroid;
import pages.SamplePage.SampleLogicIOS;


public class ExampleSteps {

    private SampleAbstract page;
    SoftAssert softAssert;

    public ExampleSteps(Config config) {
        if (config.isAndroid()) page = new SampleLogicAndroid();
        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @Given("the user click on example button")
    public void theUserClickOnExampleButton() {
        page.sampleClickOnSampleElement();
    }
}
