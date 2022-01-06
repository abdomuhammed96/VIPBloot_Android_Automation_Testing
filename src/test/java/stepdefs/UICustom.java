package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidRNPage.MainPage.MainPageAbstract;
import pages.androidRNPage.MainPage.MainPageLogicAndroid;

public class UICustom {

    private MainPageAbstract page;
    SoftAssert softAssert;

    public UICustom(Config config) {
        if (config.isAndroid()) page = new MainPageLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @Given("User Opens app")
    public void theUserOpensApp() {}

    @When("Capture events for UI Custom")
    public void captureEvents() {
        page.captureEvents();
    }

    @When("Click on Custom Button")
    public void UserClicksOnCustomBtn()
    {

        page.scrollAndClickOnSampleElementByName("PRESS ME");
    }


    @When("user clicks on [{string}];")
    public void UserClicksOnUIControls(String elementName)
    {
        page.scrollAndClickOnSampleElementByName(elementName);
    }



    @Then("Capture UI Custom page events And Compare Parameter [{string} {string} {int}]")
    public void capture_ui_custom_page_events_and_compare_parameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }


}
