package pages.webPages.mainPage;

import com.google.gson.JsonObject;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

public class MainPageLogicWeb extends MainPageAbstract {

    public MainPageLogicWeb() {
        super();
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public void sendJSScript(String arg1) {
        sendJS(arg1);
    }

    @Override
    public void ClickOnElement(WebElement element) {
        waitForVisibility(element);
        element.click();
    }

    @Override
    public boolean CompareParameter(String key, String value, int eventIndex) {
        return compareParameter(key, value, eventIndex);
    }

    @Override
    public boolean CheckWebEvents(int eventCounts) {
        return CompareWebEvents(eventCounts);
    }


    @Override
    public void ScrollToAnELement(WebElement element) throws InterruptedException {

        ((JavascriptExecutor) driver).executeScript("window.scrollBy(0,500)", element);

    }

}