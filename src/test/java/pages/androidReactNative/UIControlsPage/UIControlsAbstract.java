package pages.androidReactNative.UIControlsPage;

import io.appium.java_client.MobileElement;

public abstract class UIControlsAbstract extends UIControlsPO {

    public UIControlsAbstract() {
        super();
    }

    public abstract void sampleClickOnSampleElement(MobileElement element);

    public abstract void scrollAndClickOnSampleElementByName(String name);

    public abstract void captureAndCompareEvents();

    public abstract boolean captureAndCompareParameter(String key, String value, int eventIndex);

    public abstract void ClearLog();

    public abstract void LongPress(String name) throws InterruptedException;


    public abstract void Slide() throws InterruptedException;
    public abstract void scrollByName(String name);

}
