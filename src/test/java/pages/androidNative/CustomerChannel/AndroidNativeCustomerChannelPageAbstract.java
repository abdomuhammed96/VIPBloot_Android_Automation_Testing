package pages.androidNative.CustomerChannel;

import com.google.gson.JsonObject;

public abstract class AndroidNativeCustomerChannelPageAbstract extends CustomerChannelPO {

    public AndroidNativeCustomerChannelPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public void clickOnCustomerChannelButton(String arg0) throws InterruptedException {}

    public void WriteInDescriptionTextBox(String arg0) throws InterruptedException {}
}
