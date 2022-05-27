package pages.web.mainPage;

import com.google.gson.JsonObject;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

public class WebMainPageLogic extends WebMainPageAbstract {

    public WebMainPageLogic() {
        super();
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllWebEvents();
    }

    @Override
    public void sendJScript(String arg1) {
        sendWebJS(arg1);
    }

    @Override
    public void ClickOnElement(WebElement element) {
        waitForVisibility(element);
        element.click();
    }

    @Override
    public boolean CompareParameter(String key, String value, int eventIndex) {
        return compareWebElement(key, value, eventIndex);
    }

    @Override
    public boolean CheckEvents(int eventCounts) {
        return CompareWebEvents(eventCounts);
    }

    public boolean CheckKeyPresence(String key, int eventIndex) {
        return checkWebKeyPresence(key, eventIndex);
    }

    @Override
    public void openCloseNewTab() {
        openAndCloseNewTab();
    }

    @Override
    public void ScrollToAnElement(WebElement element) throws InterruptedException {
        ((JavascriptExecutor) driver).executeScript("window.scrollBy(0,500)", element);
    }
}