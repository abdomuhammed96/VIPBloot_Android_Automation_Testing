package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.MainPage.AndroidNativeMainPageAbstract;
import pages.androidNative.MainPage.AndroidNativeMainPageLogic;
import pages.androidNative.UserIdPage.AndroidNativeUserIdLogic;
import pages.androidNative.UserIdPage.AndroidNativeUserIdPageAbstract;

public class UserIdStepdefs {

    private AndroidNativeUserIdPageAbstract UserIdpage;
    SoftAssert softAssert;

    public UserIdStepdefs(Config config) {
        if (config.isAndroid()) UserIdpage = new AndroidNativeUserIdLogic();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @And("Click On a Button On User Id Page [{string}]")
    public void clickOnAButtonOnUserIdPage(String arg0) throws InterruptedException {
        UserIdpage.clickOnUserIdPage(arg0);
    }

    @When("Set a user Id value [{string}]")
    public void setAUserIdValue(String arg0) throws InterruptedException {
        UserIdpage.WriteInUserIdTextBox(arg0);
    }
}
