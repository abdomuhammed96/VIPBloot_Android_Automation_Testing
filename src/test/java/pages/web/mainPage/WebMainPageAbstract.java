package pages.web.mainPage;

import com.google.gson.JsonObject;
import org.openqa.selenium.WebElement;

public abstract class WebMainPageAbstract extends WebMainPO {

    public abstract JsonObject[] captureEvents();

    public abstract void sendJScript(String arg1);

    public abstract void ClickOnElement(WebElement element);

    public abstract boolean CompareParameter(String key, String value, int eventIndex);

    public abstract boolean CheckEvents(int eventCounts);

    public abstract void ScrollToAnElement(WebElement element) throws InterruptedException;

    public abstract boolean CheckKeyPresence(String key, int eventIndex);

    public abstract void openCloseNewTab();
}
