package stepdefs.web;

import core.Config;
import io.cucumber.java.en.Then;
import org.testng.asserts.SoftAssert;
import pages.web.mainPage.WebMainPageAbstract;
import pages.web.mainPage.WebMainPageLogic;

public class WebMainStepDefs {

    private WebMainPageAbstract page;
    SoftAssert softAssert;

    public WebMainStepDefs(Config config) {
        if (config.isWeb()) page = new WebMainPageLogic();
        softAssert = new SoftAssert();
    }

//    @Given("user open localHost:3000")
//    public void theUserOpenGoogleCom() {
//    }

    @Then("Capture WEB Events")
    public void captureWebEventsTest() {
        page.captureEvents();
    }

    @Then("Send WEB JS {string}")
    public void sendWebJS(String arg1) {
        page.sendJScript(arg1);
    }

    @Then("Validate WEB Element [{string} {string} {int}]")
    public void compareWebParameter(String key, String value, int eventIndex) {
        softAssert.assertTrue(page.CompareParameter(key, value, eventIndex),
                "Wrong Event_type for Event #" + eventIndex +
                        " Expected Value: " + value);
        softAssert.assertAll();
    }

    @Then("Check WEB Events Count equal [{int}]")
    public void checkWebEventsCountEqual(int arg0) {
        softAssert.assertTrue(page.CheckEvents(arg0));
        softAssert.assertAll();
    }

    @Then("Check Presence of WEB Element [{string} {int}]")
    public void checkPresenceOfWebElement(String arg0, int arg1) {
        softAssert.assertTrue(page.CheckKeyPresence(arg0, arg1));
        softAssert.assertAll();
    }

    @Then("Click on [{string}]")
    public void clickOn(String arg0) throws InterruptedException {
        switch (arg0){
            case "About":
                page.ClickOnElement(page.Click_On_About);
                break;
            case "Subscribe":
                page.ClickOnElement(page.Click_On_Subscribe);
                break;
            case "SignUp":
                page.ClickOnElement(page.Click_On_SignUp);
                break;
            case "Already have account Button":
                page.ClickOnElement(page.Click_On_Already_Have_Account);
                break;
            case "Pricing":
                page.ClickOnElement(page.Click_On_Pricing);
                break;
            case "Login":
                page.ClickOnElement(page.Click_On_Login);
                break;
            case "Login Button":
                page.ClickOnElement(page.Click_On_LoginButton);
                break;
            case "Forgot Password":
                page.ClickOnElement(page.Click_On_ForgotPassword);
                break;
            case "Don't have Account Button":
                page.ClickOnElement(page.Click_On_Dont_Have_Account);
                break;
            case "Signupforfree":
                page.ClickOnElement(page.Click_On_SignUpforfree);
                break;
            case "GetStarted":
                page.ClickOnElement(page.Click_On_GetStarted);
                break;
            case "Contact Sales":
                page.ClickOnElement(page.Click_On_ContactSales);
                break;
            case "First MSISDN button":
                page.ScrollToAnElement(page.MSISDN_1234567890);
                page.ClickOnElement(page.MSISDN_1234567890);
                break;
            case "Second MSISDN button":
                page.ScrollToAnElement(page.NOT_MSISDN_12345NOT67890);
                page.ClickOnElement(page.NOT_MSISDN_12345NOT67890);
                break;
            case "Third MSISDN button":
                page.ScrollToAnElement(page.MSISDN_btn);
                page.ClickOnElement(page.MSISDN_btn);
                break;
            case "the fourth MSISDN button":
                page.ScrollToAnElement(page.NOT_MSISDN);
                page.ClickOnElement(page.NOT_MSISDN);
                break;
            case "Change Storage Type":
                page.ClickOnElement(page.Change_Storage_Type);
                break;
            case "Get Started":
                page.ClickOnElement(page.getStarted);
                break;
            default:
        }
    }

    /*
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
    public void clickOnLogin() {
        page.ClickOnElement(page.Click_On_Login);
    }

    @Then("Click on Login Button")
    public void clickOnLoginButton() {
        page.ClickOnElement(page.Click_On_LoginButton);
    }

    @Then("Click on Forgot Password")
    public void clickOnForgotPassword() {
        page.ClickOnElement(page.Click_On_ForgotPassword);
    }

    @Then("Click on Don't have Account Button")
    public void clickOnDonTHaveAccountButton() {
        page.ClickOnElement(page.Click_On_Dont_Have_Account);
    }
    */
}