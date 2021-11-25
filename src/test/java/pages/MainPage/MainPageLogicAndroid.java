package pages.MainPage;

import base.LogCompare;
import com.google.gson.JsonObject;
import io.appium.java_client.MobileBy;
import base.LogCapture;
public class MainPageLogicAndroid extends MainPageAbstract {

    public MainPageLogicAndroid() {
        super();
    }

    @Override
    public void sampleClickOnSampleElement() {
        waitForVisibility(SAMPLE_ELEMENT);
        SAMPLE_ELEMENT.click();
    }

    @Override
    public void scrollAndClickOnSampleElementByName(String name) {
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                + name +
                "\").instance(0))")).click();
    }

    @Override
    public void captureAndCompareEvents() {
        try { Thread.sleep(10000); } catch (Exception ign) {}
        JsonObject[] jsonList = LogCapture.captureEvents(driver);
        try { Thread.sleep(3000); } catch (Exception ign) {}
        LogCapture.clearLog();
        LogCompare.compareEvents(jsonList, jsonList);
    }

    @Override
    public boolean captureAndCompareParameter(String key, String value, int eventIndex) {
        try { Thread.sleep(10000); } catch (Exception ign) {}
        JsonObject[] jsonList = LogCapture.captureEvents(driver);
        try { Thread.sleep(3000); } catch (Exception ign) {}
        LogCapture.clearLog();
        return LogCompare.compareKeyValue(key, value, jsonList[eventIndex]);
    }
}
