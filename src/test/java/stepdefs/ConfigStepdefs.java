package stepdefs;

import core.Config;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.MainPage.MainPageAbstract;
import pages.MainPage.MainPageLogicAndroid;

public class ConfigStepdefs {

    private MainPageAbstract page;
    SoftAssert softAssert;

    public ConfigStepdefs(Config config) {
        if (config.isAndroid()) page = new MainPageLogicAndroid();
//        if (config.isIos()) page = new SampleLogicIOS();
        softAssert = new SoftAssert();
    }

    @When("Switch SMAPI ON-OFF")
    public void switchSMAPIONOFF() {
        page.configureSMAPI("SMAPI on/off");
    }

    @When("Switch Verbose ON-OFF")
    public void switchVerboseONOFF() {
        page.configureSMAPI("Verbose");
    }

    @When("Switch Network ON-OFF")
    public void switchNetworkONOFF() {
        page.configureSMAPI("Network");
    }
}