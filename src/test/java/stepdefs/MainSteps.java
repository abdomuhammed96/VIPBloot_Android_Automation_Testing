package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.MainPage.MainPageAbstract;
import pages.MainPage.MainPageLogicAndroid;

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

    @Then("Capture And Compare Parameter [{string} {string} {int}]")
    public void captureAndCompareParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

    @When("Capture Events;")
    public void captureEvents() {
        page.captureEvents();
    }

    @Then("Clear Logs")
    public void clearLogs() {
        page.clearLogs();
    }

    @When("Scroll and click {string}")
    public void scrollAndClick(String name) {
        page.scrollAndClickOnSampleElementByName(name);
    }

    @When("Scroll and click on Switch Button {string}")
    public void scrollAndClickOnSwitchButton(String name) {
        page.scrollAndClickOnSampleElementByName(name);
        page.clickSwitchButton(name);
    }

    @Then("Pause Time {string} ms")
    public void pauseTime(String time) {
        try { Thread.sleep(Long.parseLong(time)); } catch (Exception ign) {}
    }

    @Then("No Events Captured")
    public void noEventsCaptured() {
        softAssert.assertTrue(page.captureNoEvents());
        softAssert.assertAll();
    }
}
