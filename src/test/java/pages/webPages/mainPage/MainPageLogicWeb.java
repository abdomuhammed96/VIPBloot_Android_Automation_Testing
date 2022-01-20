package pages.webPages.mainPage;

import com.google.gson.JsonObject;

public class MainPageLogicWeb extends MainPageAbstract {

    public MainPageLogicWeb() {
        super();
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public void sendJSScript(String arg1) {
        sendJS(arg1);
    }

    @Override
    public void clickChangeStorageType() {

        waitForVisibility(Change_Storage_Type);
        Change_Storage_Type.click();
      //  waitForVisibility(driver.findElement(By.xpath("/html/body/div[3]/div[1]/div/p/button[3]")));
       // driver.findElement(By.xpath("/html/body/div[3]/div[1]/div/p/button[3]")).click();
    }

    @Override
    public void clickOnAbout() {
        waitForVisibility(Click_On_About);
        Click_On_About.click();

    }

    @Override
    public void clickOnSubscribe() {
        waitForVisibility(Click_On_Subscribe);
        Click_On_Subscribe.click();

    }

    @Override
    public void clickOnPricing() {
        waitForVisibility(Click_On_Pricing);
        Click_On_Pricing.click();

    }

    @Override
    public void clickOnSignupforfree() {
        waitForVisibility(Click_On_SignUpforfree);
        Click_On_SignUpforfree.click();

    }

    @Override
    public void clickOnGetStarted() {
        waitForVisibility(Click_On_GetStarted);
        Click_On_GetStarted.click();

    }

    @Override
    public void clickOnContactSales() {
        waitForVisibility(Click_On_ContactSales);
        Click_On_ContactSales.click();

    }

    @Override
    public void clickOnLogin() {
        waitForVisibility(Click_On_Login);
        Click_On_Login.click();
    }

    @Override
    public void clickOnSignUp() {
        waitForVisibility(Click_On_SignUp);
        Click_On_SignUp.click();

    }

    @Override
    public void clickOnLoginButton() {
        waitForVisibility(Click_On_LoginButton);
        Click_On_LoginButton.click();

    }

    @Override
    public void clickOnForgotPassword() {
        waitForVisibility(Click_On_ForgotPassword);
        Click_On_ForgotPassword.click();

    }

    @Override
    public void clickOnDonthaveAccount() {
        waitForVisibility(Click_On_Dont_Have_Account);
        Click_On_Dont_Have_Account.click();

    }

    @Override
    public void clickOnAlreadyAccount() {
        waitForVisibility(Click_On_Already_Have_Account);
        Click_On_Already_Have_Account.click();

    }

    @Override
    public boolean CompareParameter(String key, String value, int eventIndex) {
        return compareParameter(key, value, eventIndex);
    }

    @Override
    public boolean CheckWebEvents(int eventCounts) {
        return CompareWebEvents(eventCounts);
    }

}