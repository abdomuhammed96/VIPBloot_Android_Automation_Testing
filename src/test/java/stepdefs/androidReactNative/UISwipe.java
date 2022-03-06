package stepdefs.androidReactNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidReactNative.MainPage.MainAndroidRNPageAbstract;
import pages.androidReactNative.MainPage.MainAndroidRNPageLogicAndroid;

public class UISwipe {

    private MainAndroidRNPageAbstract page;
    SoftAssert softAssert;

    public UISwipe(Config config) {
        if (config.isAndroid()) page = new MainAndroidRNPageLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @When("Capture events for UI Swipe")
    public void captureEvents() {
        page.captureEvents();
    }

    @When("refresh page")
    public void RefreshPage() {
        page.RefreshPage();
    }

    @When("user clicks on [{string}]+")
    public void UserClicksOnUIControls(String elementName)
    {
        page.scrollAndClickOnSampleElementByName(elementName);
    }

    @Then("Capture UI Swipe page events And Compare Parameter [{string} {string} {int}]")
    public void capture_ui_custom_page_events_and_compare_parameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }
}
