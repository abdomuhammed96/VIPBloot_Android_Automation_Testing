package stepdefs.androidNative;

import core.Config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidNative.ImageExclusion.AndroidNativeImageExclusionPageAbstract;
import pages.androidNative.ImageExclusion.AndroidNativeImageExclusionPageLogic;
import pages.androidNative.UserIdPage.AndroidNativeUserIdLogic;
import pages.androidNative.UserIdPage.AndroidNativeUserIdPageAbstract;

public class ExclusionImageStepdefs {

    private AndroidNativeImageExclusionPageAbstract ImageExlusionPage;
    SoftAssert softAssert;

    public ExclusionImageStepdefs(Config config) {
        if (config.isAndroid()) ImageExlusionPage = new AndroidNativeImageExclusionPageLogic();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }


    @And("Click On a Button On Image Exclusion Page [{string}]")
    public void clickOnAButtonOnUserIdPage(String arg0) throws InterruptedException {
        ImageExlusionPage.clickOnImageExlusionButton(arg0);
    }

    @When("Set an image exclusion url value [{string}]")
    public void setAUserIdValue(String arg0) throws InterruptedException {
        ImageExlusionPage.WriteInImageExclusionTextBox(arg0);
    }
}
