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

    @When("Click On Button [{string}]")
    public void clickOnButton(String arg0) throws InterruptedException {
        page.clickOnButton(arg0);

    }



}




