package pages.androidNative.NetworkPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeNetworkPageAbstract extends NetworkPO {

    public AndroidNativeNetworkPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public void clickOnNetworkButton(String arg0) throws InterruptedException {}
}
