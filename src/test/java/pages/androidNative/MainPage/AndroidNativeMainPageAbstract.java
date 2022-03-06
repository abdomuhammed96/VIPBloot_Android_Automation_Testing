package pages.androidNative.MainPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeMainPageAbstract extends MainPO {

    public AndroidNativeMainPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public void clickOnButton(String arg0) {}
}
