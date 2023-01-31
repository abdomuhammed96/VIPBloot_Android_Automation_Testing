package base;

import com.google.gson.JsonObject;
import core.Config;
import core.Hooks;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.nativekey.AndroidKey;
import io.appium.java_client.android.nativekey.KeyEvent;
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



    public  void clickOnBackButton()
    {
        ((AndroidDriver) driver).pressKey((new KeyEvent(AndroidKey.BACK)));

    }


    public void WriteInTexbox(MobileElement Textbox,String text)
    {
        Textbox.sendKeys(text);
    }

    public void scrollAndClick(String name) throws InterruptedException {

        Thread.sleep(25000);
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                        + name +
                        "\").instance(0))")).click();
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }

}