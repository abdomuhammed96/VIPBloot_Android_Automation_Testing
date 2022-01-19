package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.webPages.mainPage.MainPageAbstract;
import pages.webPages.mainPage.MainPageLogicWeb;

public class WebMainStepDefs {

    private MainPageAbstract page;
    SoftAssert softAssert;

    public WebMainStepDefs(Config config) {
        if (config.isWeb()) page = new MainPageLogicWeb();
        softAssert = new SoftAssert();
    }

    @Given("user open localHost:3000")
    public void theUserOpenGoogleCom() {
//        throw new io.cucumber.java.PendingException();
    }

    @Then("Capture Web Events")
    public void captureWebEventsTest() {
        page.captureEvents();
    }

    @Then("Send JS {string}")
    public void sendJSTest(String arg1) {
        page.sendJSScript(arg1);
    }

    @Then("Click Change Storage Type")
    public void clickChangeStorageTypeTest() {
        page.clickChangeStorageType();
    }

    @Then("Compare Parameter [{string} {string} {int}]")
    public void compareParameterTest(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.CompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #"+ eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

    @Then("Check WEB Events Count equal [{int}]")
    public void checkWEBEventsCountEqual(int arg0) {
        softAssert.assertTrue(page.CheckWebEvents(arg0));
        softAssert.assertAll();
    }

    @Then("Click on About")
    public void clickOnAbout() {
        page.clickOnAbout();
    }

    @Then("Click on Subscribe")
    public void clickOnSubscribe() {
        page.clickOnSubscribe();
    }

    @Then("Click on SignUp")
    public void clickOnSignUp() {
        page.clickOnSignUp();
    }

    @Then("Click on Already have account Button")
    public void clickOnAlreadyHaveAccountButton() {
        page.clickOnAlreadyAccount();
    }

    @Then("Click on Pricing")
    public void clickOnPricing() {
        page.clickOnPricing();
    }

    @Then("Click on Login")
    public void clickOnLogin(){
        page.clickOnLogin();
    }

    @Then("Click on Login Button")
    public void clickOnLoginButton(){
        page.clickOnLoginButton();
    }
    @Then("Click on Forgot Password")
    public void clickOnForgotPassword(){
        page.clickOnForgotPassword();
    }
    @Then("Click on Don't have Account Button")
    public void clickOnDonTHaveAccountButton(){
        page.clickOnDonthaveAccount();
    }


    @Then("Click on Signupforfree")
    public void clickOnSignupforfree() {
        page.clickOnSignupforfree();
    }

    @Then("Click on GetStarted")
    public void clickOnGetStarted() {
        page.clickOnGetStarted();
    }

    @Then("Click on Contact Sales")
    public void clickOnContactSales() {
        page.clickOnContactSales();
    }
}
