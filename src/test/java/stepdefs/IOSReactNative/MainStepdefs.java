package stepdefs.IOSReactNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.IOSReactNativeMain.IOSRNMainAbstract;
import pages.IOSReactNativeMain.IOSRNMainLogic;

public class MainStepdefs {

    private IOSRNMainAbstract page;
    SoftAssert softAssert;

    public MainStepdefs(Config config) {
//        if (config.isAndroid()) page = new AndroidNativeUIEventsPageLogic();
        if (config.isIos()) page = new IOSRNMainLogic();
        softAssert = new SoftAssert();
    }
    @When("Capture IOS RN Event")
    public void captureIOSRNEvent() {
        page.captureEvents();
    }

    @Then("Validate IOS RN Element [{string} {string}] for event [{string} {string}]")
    public void validateIOSRNElementForEvent(String arg0, String arg1, String arg2, String arg3) {
        softAssert.assertTrue(page.validateEventElement(arg0, arg1, arg2, arg3),
                "Wrong Event_type for Event #" + arg2 + "  " + arg2 +
                        " Expected Value: " + arg1 + "for key: "  + arg0);
        softAssert.assertAll();
    }

    @When("Click On IOS RN Button [{string}]")
    public void clickOnIOSRNButton(String arg0) {
        page.clickOnIOSButton(arg0);
    }

    @Then("Check [{int}] Events Captured")
    public void checkEventsCaptured(int arg0) {
        page.validateNumOfEventsCaptured(arg0);
    }

    @Then("Set UserID with[{string}]")
    public void setUserIDWith(String arg0) {
        page.setIOSRNUserID(arg0);
    }
}
