package stepdefs;

import core.Config;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.asserts.SoftAssert;
import pages.androidRNPage.MainPage.MainPageAbstract;
import pages.androidRNPage.MainPage.MainPageLogicAndroid;

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

    @When("Edit Environment")
    public void editEnvironment() {
        page.configureSMAPI("Environment");
    }

    @When("Edit Trace_transaction_ID_Key")
    public void editTrace_transaction_ID_Key() {
        page.configureSMAPI("Trace transaction ID Key");
    }

    @When("Edit User_ID")
    public void editUser_ID() {
        page.configureSMAPI("User ID");
    }

    @Then("Press Cancel")
    public void pressCancel() {
        page.cancel();
    }

    @Then("Press Done")
    public void pressDone() {
        page.done();
    }

    @Then("Press Flush")
    public void flush() {
        page.flush();
    }

    @Then("Write {string}")
    public void write(String text) {
        page.writeText(text);
    }
}