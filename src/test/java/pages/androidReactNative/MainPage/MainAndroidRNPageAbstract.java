package pages.androidReactNative.MainPage;

import com.google.gson.JsonObject;

public abstract class MainAndroidRNPageAbstract extends MainPO {

    public MainAndroidRNPageAbstract() {
        super();
    }

    public abstract void scrollAndClickOnSampleElementByName(String name);

    public abstract JsonObject[] captureEvents();

    public abstract Boolean checkNoEventsCaptured();

    public abstract boolean captureAndCompareParameter(String key, String value, int eventIndex);

    public abstract void clearLogs();

    public void clickSwitchButton(String name){}

    public abstract void flush();

    public abstract void configureSMAPI(String name);

    public abstract void cancel();

    public abstract void done();

    public abstract void writeText(String text);

    public abstract boolean checkCurrentDbCountEqualValue(int arg);

    public abstract boolean checkFlushCountSizeEqualValue(int arg);

    public abstract boolean checkTotalEventSizeValue(int arg);

    public abstract boolean checkTotalUniqueEventSizeValue(int arg);

    public abstract boolean CompareFlushEventParameter(String key, String value);

    public abstract void RefreshPage();

    public abstract void PushAppIntoBackground();
}
