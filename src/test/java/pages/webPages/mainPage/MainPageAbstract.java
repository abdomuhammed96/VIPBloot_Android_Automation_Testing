package pages.webPages.mainPage;

import com.google.gson.JsonObject;
import org.openqa.selenium.WebElement;

public abstract class MainPageAbstract extends MainPO {



    public abstract JsonObject[] captureEvents();

    public abstract void sendJSScript(String arg1);

    public abstract void ClickOnElement(WebElement element);

    public abstract boolean CompareParameter(String key, String value, int eventIndex);

    public abstract boolean CheckWebEvents(int eventCounts);
}
