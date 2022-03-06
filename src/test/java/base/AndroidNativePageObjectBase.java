package base;

import com.google.gson.JsonObject;
import core.Config;
import core.Hooks;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

public abstract class AndroidNativePageObjectBase {
    public MobileDriver driver;
    WebDriverWait wait;
    LogCapture logCapture = new LogCapture();

    public AndroidNativePageObjectBase() {
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
            Thread.sleep(10000);
        } catch (Exception ign) {
        }
        JsonObject[] jsonList = logCapture.captureAndroidNativeEvents(driver);
        try {
            Thread.sleep(3000);
        } catch (Exception ign) {
        }
        logCapture.clearLog();
        return jsonList;
    }

    public Boolean captureNoEvents() {
        JsonObject[] jsonList = logCapture.captureAndroidNativeEvents(driver);
        if (jsonList[0] == null)
            return true;
        return false;
    }

    public boolean ValidateElementValue(String key, String value, int eventIndex) {
        return LogCompare.compareKeyValue(key, value, logCapture.getLogs()[eventIndex]);
    }
}