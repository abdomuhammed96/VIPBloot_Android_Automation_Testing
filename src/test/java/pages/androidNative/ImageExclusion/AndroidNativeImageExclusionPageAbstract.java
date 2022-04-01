package pages.androidNative.ImageExclusion;

import com.google.gson.JsonObject;

public abstract class AndroidNativeImageExclusionPageAbstract extends ImageExlusionPO {

    public AndroidNativeImageExclusionPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public void clickOnImageExlusionButton(String arg0) throws InterruptedException {}

    public void WriteInImageExclusionTextBox(String arg0) throws InterruptedException {}
}
