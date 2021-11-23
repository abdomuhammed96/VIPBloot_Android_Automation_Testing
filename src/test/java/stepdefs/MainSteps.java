package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.SamplePage.MainPageAbstract;
import pages.SamplePage.MainPageLogicAndroid;

public class MainSteps {

    private MainPageAbstract page;
    SoftAssert softAssert;

    public MainSteps(Config config) {
        if (config.isAndroid()) page = new MainPageLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @Given("User opens App")
    public void theUserOpensApp() {}

    @Then("event field should be {string}")
    public void eventExampleShouldBeRecorded(String expectedResult) {
        softAssert.assertEquals("expected result",expectedResult);
        softAssert.assertAll();
    }

    @Then("Capture And Compare Events")
    public void captureEvents() {
        page.captureAndCompareEvents();
    }

    @Then("Capture And Compare Parameter [{string} {string} {int}]")
    public void captureAndCompareParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

}
