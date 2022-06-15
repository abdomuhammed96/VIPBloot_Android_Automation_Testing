package stepdefs.IOSNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.IOSNativeMain.NativeMainAbstract;
import pages.IOSNativeMain.NativeMainLogic;

public class IOSStepdefs {

    private NativeMainAbstract page;
    SoftAssert softAssert;

    public IOSStepdefs(Config config) {
//        if (config.isAndroid()) page = new AndroidNativeUIEventsPageLogic();
        if (config.isIos()) page = new NativeMainLogic();
        softAssert = new SoftAssert();
    }

    @When("Capture IOS Events")
    public void captureIOSEvents() {
        page.captureEvents();
    }

    @Then("Check Element value [{string} {string} {int}]")
    public void checkElementValue(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.validateElementValue(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

    @When("Click On IOS Button [{string}]")
    public void clickOnIOSButton(String arg0) {
        page.clickOnIOSButton(arg0);
    }

    @Then("Set {string} to UITextField")
    public void setUserID(String arg0) {
        page.writeIOSTextToUITextField(arg0);
    }

    @Then("Check Element existed [{string} {int}]")
    public void checkElementExisted(String arg0, int arg1) {
        page.checkElementIsExisted(arg0, arg1);
    }

    @Then("Check Number of logged events [{int}]")
    public void checkNumberOfLoggedEvents(int arg0) {
        softAssert.assertTrue(page.checkNumberOfEvents(arg0));
        softAssert.assertAll();
    }

    @Then("Check No Captured Events")
    public void checkNoCapturedEvents() {
        softAssert.assertTrue(page.checkNoCapturedEvents());
        softAssert.assertAll();
    }

    @Then("Validate IOS Element [{string} {string}] for event [{string} {string}]")
    public void validateElementForEvent(String key, String value, String eventType, String eventElement) {
        softAssert.assertTrue(page.validateEventElement(key, value, eventType, eventElement),
                "Wrong Event_type for Event #" + eventType + "  " + eventType +
                        " Expected Value: " + value + "for key: "  + key);
        softAssert.assertAll();
    }

//    @When("Click on IOS button by class [{string}]")
//    public void clickOnIOSButtonByClass(String arg0) {
//        page.pressButton(arg0);
//    }
}