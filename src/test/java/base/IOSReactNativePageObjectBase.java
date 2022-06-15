package base;

import com.google.gson.JsonObject;
import core.Config;
import core.Hooks;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

public abstract class IOSReactNativePageObjectBase {
    public MobileDriver driver;
    WebDriverWait wait;
    LogCapture logCapture = new LogCapture();

    public IOSReactNativePageObjectBase() {
        this.driver = Hooks.getDriver();
        setDecoratorBasedOnPlatform();
        wait = new WebDriverWait(driver, 30);
    }

    private void setDecoratorBasedOnPlatform() {
        Config config = new Config();
        driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
        if (config.isMobile()) setAppiumDecorator();
    }

    private void setAppiumDecorator() {
        AppiumFieldDecorator appiumFieldDecorator =
                new AppiumFieldDecorator(driver, Duration.ofSeconds(3));
        PageFactory.initElements(appiumFieldDecorator, this);
    }

    ///////////////////////////////////////Android ReactNative methods//////////////////////////////////////////////////
    public void waitForVisibility(WebElement element) {
        wait.until(ExpectedConditions.visibilityOf(element));
    }

    public void waitForInVisibility(WebElement element) {
        wait.until(ExpectedConditions.invisibilityOf(element));
    }

    public JsonObject[] captureAllEvents() {
        try {
            Thread.sleep(15000);
        } catch (Exception ign) {
        }
        JsonObject[] jsonList = logCapture.captureIOSEvents(driver);
        try {
            Thread.sleep(3000);
        } catch (Exception ign) {
        }
        logCapture.clearLog();
        return jsonList;
    }
//
//    public boolean ValidateElementValue(String key, String value, int eventIndex) {
//        return LogCompare.compareKeyValue(key, value, logCapture.getLogs()[eventIndex]);
//    }
//
//    public boolean ValidateElementExistence(String key, int eventIndex) {
//        return LogCompare.checkKey(key, logCapture.getLogs()[eventIndex]);
//    }
//
//    public boolean ValidateElementCounts(int eventCount) {
//        return LogCompare.checkEventCount(eventCount, logCapture.getLogs());
//    }
//
//    public boolean validateNoCapturedEvents() {
//        return LogCompare.validateNoCapturedEvents(logCapture.getLogs());
//    }
//
    public boolean checkEventElement(String key, String value, String eventType, String eventElement) {
        return LogCompare.compareEvent(logCapture.getLogs(), eventType, eventElement, key, value);
    }

    public boolean checkEventsCaptured(int arg0){
        if (logCapture.getLogs().length == arg0)
            return true;
        return false;
    }

}