package stepdefs;

import core.Config;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
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


    //MSISDN 1234567890
    @When("Click on First MSISDN button")
    public void clickOnFirstMSISDNButton() throws InterruptedException {
        page.ScrollToAnELement(page.MSISDN_1234567890);
        page.ClickOnElement(page.MSISDN_1234567890);
    }

    //NOT MSISDN 12345NOT67890
    @When("Click on Second MSISDN button")
    public void clickOnSecondMSISDNButton() throws InterruptedException {
        page.ScrollToAnELement(page.NOT_MSISDN_12345NOT67890);
        page.ClickOnElement(page.NOT_MSISDN_12345NOT67890);
    }
    //MSISDN
    @When("Click on Third MSISDN button")
    public void clickOnThirdMSISDNButton() throws InterruptedException {
        page.ScrollToAnELement(page.MSISDN_btn);
        page.ClickOnElement(page.MSISDN_btn);
    }

    //NOT MSISDN
    @When("Click on the fourth MSISDN button")
    public void clickOnFourthMSISDNButton() throws InterruptedException {
        page.ScrollToAnELement(page.NOT_MSISDN);
        page.ClickOnElement(page.NOT_MSISDN);
    }

    @Then("Click Change Storage Type")
    public void clickChangeStorageTypeTest() {
        page.ClickOnElement(page.Change_Storage_Type);
    }

    @When("Click on Get Started")
    public void ClickOnGetStartedIcon() throws InterruptedException {
        page.ClickOnElement(page.getStarted);

    }
}
