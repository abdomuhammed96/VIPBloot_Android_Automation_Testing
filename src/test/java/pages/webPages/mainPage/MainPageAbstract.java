package pages.webPages.mainPage;

import com.google.gson.JsonObject;

public abstract class MainPageAbstract extends MainPO {

    public MainPageAbstract() {
        super();
    }

    public abstract JsonObject[] captureEvents();

    public abstract void sendJSScript(String arg1);

    public abstract void clickChangeStorageType();

    public abstract boolean CompareParameter(String key, String value, int eventIndex);

    public abstract boolean CheckWebEvents(int eventCounts);
}
