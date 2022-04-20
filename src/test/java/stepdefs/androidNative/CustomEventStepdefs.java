package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.CustomEventPage.AndroidNativeCustomEventLogic;
import pages.androidNative.CustomEventPage.AndroidNativeCustomEventPageAbstract;
import pages.androidNative.UserIdPage.AndroidNativeUserIdLogic;
import pages.androidNative.UserIdPage.AndroidNativeUserIdPageAbstract;

public class CustomEventStepdefs {

    private AndroidNativeCustomEventPageAbstract CustomEventPage;
    SoftAssert softAssert;

    public CustomEventStepdefs(Config config) {
        if (config.isAndroid()) CustomEventPage = new AndroidNativeCustomEventLogic();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @And("Click On a Button On Custom Event Page [{string}]")
    public void clickOnAButtonOnUserIdPage(String arg0) throws InterruptedException {
        CustomEventPage.clickOnCustomEventPage(arg0);
    }


}
