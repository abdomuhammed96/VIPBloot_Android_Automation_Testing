package base;

import com.google.gson.JsonObject;
import core.Config;
import core.Hooks;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;
import java.util.concurrent.TimeUnit;

public abstract class AndroidReactNativePageObjectBase {
    public MobileDriver driver;
    WebDriverWait wait;
    LogCapture logCapture = new LogCapture();

    public AndroidReactNativePageObjectBase() {
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

    public void waitForVisibility(WebElement element) {
        wait.until(ExpectedConditions.visibilityOf(element));
    }

    public void waitForInVisibility(WebElement element) {
        wait.until(ExpectedConditions.invisibilityOf(element));
    }

    public void scrollTo(String name){
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                        + name +
                        "\").instance(0))"));
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }

    public void scrollAndClick(String name){
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                        + name +
                        "\").instance(0))")).click();
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }

    public JsonObject[] captureAllEvents() {
        try { Thread.sleep(10000); } catch (Exception ign) {}
        JsonObject[] jsonList = logCapture.captureAndroidRNEvents(driver);
        try { Thread.sleep(3000); } catch (Exception ign) {}
        logCapture.clearLog();
        return jsonList;
    }

    public Boolean captureNoEvents() {
        JsonObject[] jsonList = logCapture.captureAndroidRNEvents(driver);
        if (jsonList[0] == null)
            return true;
        return false;
    }

    public void clearAllLogs() {
        logCapture.clearLog();
    }

    public boolean compareParameter(String key, String value, int eventIndex) {
        return LogCompare.compareKeyValue(key, value, logCapture.getLogs()[eventIndex]);
    }

    public Boolean compareFlushEventParameter(String key,String value){
        return LogCompare.compareKeyValue(key, value, logCapture.getFLUSHEvent());
    }

    public boolean checkCurrentDbCountEqual(int arg) {
        if (arg == logCapture.getCurrentDbCount())
            return true;
        return false;
    }

    public boolean checkFlushCountSizeEqual(int arg) {
        if (arg == logCapture.getFlushCountSize())
            return true;
        return false;
    }

    public boolean checkTotalEventSize(int arg) {
        if (arg == logCapture.getTotal_event_size())
            return true;
        return false;
    }

    public boolean checkTotalUniqueEventSize(int arg) {
        if (arg == logCapture.getTotal_unique_event_size())
            return true;
        return false;
    }
}