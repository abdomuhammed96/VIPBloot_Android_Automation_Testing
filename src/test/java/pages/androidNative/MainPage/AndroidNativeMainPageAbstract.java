package pages.androidNative.MainPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeMainPageAbstract extends MainPO {

    public AndroidNativeMainPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public abstract void clickOnButton(String arg0);

    public abstract boolean validateEventElement(String key, String value, String eventType, String eventElement);
}
