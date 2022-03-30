package pages.androidNative.UserIdPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeUserIdPageAbstract extends UserIdPO {

    public AndroidNativeUserIdPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public abstract void clickOnBack();

    public void clickOnUserIdPage(String arg0) throws InterruptedException {}

    public void WriteInUserIdTextBox(String arg0) throws InterruptedException {}

}
