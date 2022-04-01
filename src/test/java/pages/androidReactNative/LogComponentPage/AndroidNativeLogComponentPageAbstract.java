package pages.androidReactNative.LogComponentPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeLogComponentPageAbstract extends LogComponentPO {

    public AndroidNativeLogComponentPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public abstract void clickOnBack();

    public void clickOnLogComponentPage(String arg0) throws InterruptedException {}
}
