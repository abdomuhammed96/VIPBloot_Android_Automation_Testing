package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.CustomerChannel.AndroidNativeCustomerChannelPageAbstract;
import pages.androidNative.CustomerChannel.AndroidNativeCustomerChannelPageLogic;
import pages.androidNative.ImageExclusion.AndroidNativeImageExclusionPageAbstract;
import pages.androidNative.ImageExclusion.AndroidNativeImageExclusionPageLogic;

public class CustomerChannelStepdefs {

    private AndroidNativeCustomerChannelPageAbstract CustomerChannelPage;
    SoftAssert softAssert;

    public CustomerChannelStepdefs(Config config) {
        if (config.isAndroid()) CustomerChannelPage = new AndroidNativeCustomerChannelPageLogic();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @And("Click On a Button On Customer Channel Page [{string}]")
    public void clickOnAButtonOnUserIdPage(String arg0) throws InterruptedException {
        CustomerChannelPage.clickOnCustomerChannelButton(arg0);
    }

    @When("Write a description [{string}]")
    public void setAUserIdValue(String arg0) throws InterruptedException {
        CustomerChannelPage.WriteInDescriptionTextBox(arg0);
    }
}
