package stepdefs.androidNative;

import com.google.gson.JsonObject;
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

    @Then("Check Element value is not null [{string} {int}]")
    public void checkValueIsNotNull(String key,int eventIndex) {
        softAssert.assertTrue(page.checkValueIsNotNull(key, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: Is not null");
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

    @Then("Check Number of Events Captured [{int}]")
    public void checkNumberOfEventsLogged(int arg0) {

            JsonObject[] jsonObjects=page.captureAllEvents();
        try {
            System.out.println(jsonObjects.length);
            JsonObject js = jsonObjects[arg0-1];
            System.out.println(js.size());
            System.out.println( "try happend");
            softAssert.assertTrue(true);

        }catch (NullPointerException e){
            softAssert.assertSame("x","y");
            System.out.println( "exception happend");

        }


    }

}




