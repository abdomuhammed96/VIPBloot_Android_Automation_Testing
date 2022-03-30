package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.MainPage.AndroidNativeMainPageAbstract;
import pages.androidNative.MainPage.AndroidNativeMainPageLogic;
import pages.androidNative.NetworkPage.AndroidNativeNetworkPageAbstract;
import pages.androidNative.NetworkPage.AndroidNativeNetworkPageLogic;

public class NetworkLoggerStepdefs {

    private AndroidNativeMainPageAbstract page;
    private AndroidNativeNetworkPageAbstract NetworkPage;
    SoftAssert softAssert;

    public NetworkLoggerStepdefs(Config config) {
        if (config.isAndroid()) {
            page = new AndroidNativeMainPageLogic();
            NetworkPage = new AndroidNativeNetworkPageLogic();
        }
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @When("Click On Network Button [{string}]")
    public void clickOnNetworkButton(String arg0) throws InterruptedException {
        NetworkPage.clickOnNetworkButton(arg0);
    }





}

