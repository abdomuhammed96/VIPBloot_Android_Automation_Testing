package pages.MainPage;

import com.google.gson.JsonObject;

public abstract class MainPageAbstract extends MainPO {

    public MainPageAbstract() {
        super();
    }

    public abstract void scrollAndClickOnSampleElementByName(String name);

    public abstract JsonObject[] captureEvents();

    public abstract Boolean checkNoEventsCaptured();

    public abstract boolean captureAndCompareParameter(String key, String value, int eventIndex);

    public abstract void clearLogs();

    public void clickSwitchButton(String name){}

    public abstract void configureSMAPI(String name);
}
