package stepdefs;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidRNPage.MainPage.MainPageAbstract;
import pages.androidRNPage.MainPage.MainPageLogicAndroid;

public class UIChange {

    private MainPageAbstract page;
    SoftAssert softAssert;

    public UIChange(Config config) {
        if (config.isAndroid()) page = new MainPageLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @When("Capture events for UI Change")
    public void captureEvents() {
        page.captureAllEvents();
    }

    @When("Select another page [{string}]")
    public void UserSelectSecondPage(String XPage)
    {
        page.scrollAndClickOnSampleElementByName(XPage);
    }


    @When("user clicks on [{string}]++")
    public void UserClicksOnUIControls(String elementName)
    {
        page.scrollAndClickOnSampleElementByName(elementName);
    }



    @Then("Capture UI Change page events And Compare Parameter [{string} {string} {int}]")
    public void captureAndCompareParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }


}
