package stepdefs.androidReactNative;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidReactNative.MainPage.MainAndroidRNPageAbstract;
import pages.androidReactNative.MainPage.MainAndroidRNPageLogicAndroid;

public class MainSteps {

    private MainAndroidRNPageAbstract page;
    SoftAssert softAssert;

    public MainSteps(Config config) {
        if (config.isAndroid()) page = new MainAndroidRNPageLogicAndroid();
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

    @Then("Check currentDbCount equal [{int}]")
    public void checkCurrentDbCountEqual(int arg0) {
        softAssert.assertTrue(page.checkCurrentDbCountEqualValue(arg0));
        softAssert.assertAll();
    }

    @Then("Check flushCountSize equal [{int}]")
    public void checkFlushCountSizeEqual(int arg0) {
        softAssert.assertTrue(page.checkFlushCountSizeEqualValue(arg0));
        softAssert.assertAll();
    }

    @Then("Check Total_event_size equal [{int}]")
    public void checkTotal_event_sizeEqual(int arg0) {
        softAssert.assertTrue(page.checkTotalEventSizeValue(arg0));
        softAssert.assertAll();
    }

    @Then("Check Total_unique_event_size equal [{int}]")
    public void checkTotal_unique_event_sizeEqual(int arg0) {
        softAssert.assertTrue(page.checkTotalUniqueEventSizeValue(arg0));
        softAssert.assertAll();
    }

    @Then("Compare Flush Event Parameter [{string} {string}]")
    public void compareFlushEventParameter(String key, String value) {
        softAssert.assertTrue(page.CompareFlushEventParameter(key, value),
                "Wrong Event_type for flush Event Expected Value: " + value);
        softAssert.assertAll();
    }
}