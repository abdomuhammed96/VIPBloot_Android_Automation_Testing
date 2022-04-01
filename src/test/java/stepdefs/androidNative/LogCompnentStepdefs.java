package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.MainPage.AndroidNativeMainPageAbstract;
import pages.androidNative.MainPage.AndroidNativeMainPageLogic;
import pages.androidNative.NetworkPage.AndroidNativeNetworkPageAbstract;
import pages.androidNative.NetworkPage.AndroidNativeNetworkPageLogic;
import pages.androidReactNative.LogComponentPage.AndroidNativeLogComponentPageAbstract;
import pages.androidReactNative.LogComponentPage.AndroidNativeLogComponentPageLogic;

public class LogCompnentStepdefs {

    private AndroidNativeLogComponentPageAbstract LogCompnentPage;

    SoftAssert softAssert;

    public LogCompnentStepdefs(Config config) {
        if (config.isAndroid()) {
            LogCompnentPage = new AndroidNativeLogComponentPageLogic();

        }
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @When("Click On a Button On Log Component Page [{string}]")
    public void clickOnNetworkButton(String arg0) throws InterruptedException {
        LogCompnentPage.clickOnLogComponentPage(arg0);
    }

    @Then("Click Back Button")
    public void clickBackButton() {
        LogCompnentPage.clickOnBackButton();
    }






}

