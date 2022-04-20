package pages.androidNative.CustomEventPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeCustomEventPageAbstract extends CustomEventPO {

    public AndroidNativeCustomEventPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public abstract void clickOnCustomEventPage(String arg0);



}
