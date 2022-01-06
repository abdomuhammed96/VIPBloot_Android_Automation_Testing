package stepdefs;

import pages.androidRNPage.MainPage.MainPageLogicAndroid;
import  pages.androidRNPage.UIControlsPage.UIControlsAbstract;
import pages.androidRNPage.UIControlsPage.UIControlsLogicAndroid;
import pages.androidRNPage.UIControlsPage.UIControlsPO;
import core.Config;
import io.appium.java_client.MobileElement;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.testng.asserts.SoftAssert;
import pages.androidRNPage.MainPage.MainPageAbstract;

import java.util.List;

public class UIControls extends UIControlsPO {

    private MainPageAbstract page;
    private UIControlsAbstract UIControlsPage;
    SoftAssert softAssert;

    public UIControls(Config config) {
        if (config.isAndroid()) page = new MainPageLogicAndroid();
        if (config.isAndroid()) UIControlsPage = new UIControlsLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    //---------------------------------- UIControls Page Methods-------------------------

    @When("Capture events On UI Controls Page")
    public void captureEventsInUIControlsPage() {
        UIControlsPage.captureAndCompareEvents();
    }


    @When("User tests an element[{string}]")
    public void UserClicksOnElementOnUIControlsPage(String elementName)
    {
        UIControlsPage.scrollAndClickOnSampleElementByName(elementName);
    }
    @When("Slide")
    public void slide() throws InterruptedException {
        UIControlsPage.Slide();
    }

    @When("Click on Long Press Button [{string}]")
    public void longPress(String name) throws InterruptedException {
        UIControlsPage.LongPress(name);
    }


    @When("Clicking on a specific element [{string}]")
    public void clickingOnASpecificElement(String name) {
        List<MobileElement> elementE;
        if (name.equals("Switch"))
            UIControlsPage.sampleClickOnSampleElement(UI_Switch);
        else {
            //UIControlsPage.sampleClickOnSampleElement(Pressme);
            elementE=driver.findElements(By.xpath("//*[contains(@text, 'Press me')]"));
            elementE.get(1).click();
        }


    }






    @Then("Compare Parameters On UI Controls Page [{string} {string} {int}]")
    public void CompareParametersInUIControlsPage(String key, String value, int eventIndex) {
        softAssert.assertTrue(UIControlsPage.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

//---------------------------------- Main Page Methods-------------------------
    @Given("User clicks on App icon")
    public void theUserOpensApp() {}

    @When("Capture events;")
    public void captureEvents() {
        page.captureEvents();
    }

    @When("user clicks on [{string}]")
    public void UserClicksOnUIControls(String elementName)
    {
        page.scrollAndClickOnSampleElementByName(elementName);
    }



    @Then("Capture UI Controls page events And Compare Parameter [{string} {string} {int}]")
    public void captureAndCompareParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.captureAndCompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }



}
