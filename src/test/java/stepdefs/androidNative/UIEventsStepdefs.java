package stepdefs.androidNative;

import com.google.gson.JsonObject;
import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.MainPage.AndroidNativeMainPageAbstract;
import pages.androidNative.MainPage.AndroidNativeMainPageLogic;
import pages.androidNative.UIEventsPage.AndroidNativeUIEventsPageAbstract;
import pages.androidNative.UIEventsPage.AndroidNativeUIEventsPageLogic;

public class UIEventsStepdefs {

    private AndroidNativeMainPageAbstract page;
    private AndroidNativeUIEventsPageAbstract UIEventspage;
    SoftAssert softAssert;


    public UIEventsStepdefs(Config config) {
        if (config.isAndroid()) {
            page = new AndroidNativeMainPageLogic();
            UIEventspage = new AndroidNativeUIEventsPageLogic();
        }
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @When("Click On Button On UIEvents Page[{string}]")
    public void clickOnUIEventsPage(String arg0) {
        UIEventspage.clickOnUIEventsPage(arg0);
    }


    @When("Select Element from spinner[{string}]")
    public void selectElementFromSpinner(String arg0) throws InterruptedException {
        UIEventspage.SelectElementFromSpinner(arg0);
    }


    @When("Slide to the right")
    public void slideToTheRight() {
        UIEventspage.SetStarsOnRatingApp();
    }


}




