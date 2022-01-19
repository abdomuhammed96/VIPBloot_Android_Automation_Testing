package pages.webPages.mainPage;

import com.google.gson.JsonObject;

public abstract class MainPageAbstract extends MainPO {



    public abstract JsonObject[] captureEvents();

    public abstract void sendJSScript(String arg1);

    public abstract void clickChangeStorageType();
    public abstract  void clickOnAbout();
    public abstract void clickOnSubscribe();
    public abstract void clickOnPricing();
    public abstract void clickOnSignupforfree();
    public abstract void clickOnGetStarted();
    public abstract void clickOnContactSales();
    public abstract void clickOnLogin();
    public abstract void clickOnSignUp();

    public abstract void clickOnLoginButton();
    public abstract void clickOnForgotPassword();
    public abstract void clickOnDonthaveAccount();
    public abstract void clickOnAlreadyAccount();

    public abstract boolean CompareParameter(String key, String value, int eventIndex);

    public abstract boolean CheckWebEvents(int eventCounts);
}
