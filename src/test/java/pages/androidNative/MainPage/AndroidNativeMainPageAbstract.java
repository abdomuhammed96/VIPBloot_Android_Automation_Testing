package pages.androidNative.MainPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeMainPageAbstract extends MainPO {

    public AndroidNativeMainPageAbstract() {
        super();
    }


    public abstract void clickOnButton(String arg0) throws InterruptedException;

}
