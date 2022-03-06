package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.MainPage.AndroidNativeMainPageAbstract;
import pages.androidNative.MainPage.AndroidNativeMainPageLogic;

public class AndroidNativeStepdefs {

    private AndroidNativeMainPageAbstract page;
    SoftAssert softAssert;

    public AndroidNativeStepdefs(Config config) {
        if (config.isAndroid()) page = new AndroidNativeMainPageLogic();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @When("Capture Android Native Events")
    public void captureAndroidNativeEvents() {
        page.captureEvents();
    }

    @Then("Check Element value [{string} {string} {int}]")
    public void checkElementValue(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.validateElementValue(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }


    @When("Click On Button [{string}]")
    public void clickOnButton(String arg0) {
        page.clickOnButton(arg0);
    }

    @Then("Check No Events Captured")
    public void checkNoEventsCaptured() {
        softAssert.assertTrue(page.captureNoEvents());
        softAssert.assertAll();
    }
}
