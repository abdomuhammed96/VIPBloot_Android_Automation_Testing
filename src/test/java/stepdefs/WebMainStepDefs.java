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
        page.ClickOnElement(page.Change_Storage_Type);
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
        page.ClickOnElement(page.Click_On_About);
    }

    @Then("Click on Subscribe")
    public void clickOnSubscribe() {
        page.ClickOnElement(page.Click_On_Subscribe);
    }

    @Then("Click on SignUp")
    public void clickOnSignUp() {
        page.ClickOnElement(page.Click_On_SignUp);
    }

    @Then("Click on Already have account Button")
    public void clickOnAlreadyHaveAccountButton() {
        page.ClickOnElement(page.Click_On_Already_Have_Account);
    }

    @Then("Click on Pricing")
    public void clickOnPricing() {
        page.ClickOnElement(page.Click_On_Pricing);
    }

    @Then("Click on Login")
    public void clickOnLogin(){
        page.ClickOnElement(page.Click_On_Login);
    }

    @Then("Click on Login Button")
    public void clickOnLoginButton(){
        page.ClickOnElement(page.Click_On_LoginButton);
    }
    @Then("Click on Forgot Password")
    public void clickOnForgotPassword(){
        page.ClickOnElement(page.Click_On_ForgotPassword);
    }
    @Then("Click on Don't have Account Button")
    public void clickOnDonTHaveAccountButton(){
        page.ClickOnElement(page.Click_On_Dont_Have_Account);
    }


    @Then("Click on Signupforfree")
    public void clickOnSignupforfree() {
        page.ClickOnElement(page.Click_On_SignUpforfree);
    }

    @Then("Click on GetStarted")
    public void clickOnGetStarted() {
        page.ClickOnElement(page.Click_On_GetStarted);
    }

    @Then("Click on Contact Sales")
    public void clickOnContactSales() {
        page.ClickOnElement(page.Click_On_ContactSales);
    }
}
