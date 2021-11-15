package base;

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

public abstract class PageObjectBase {
    public MobileDriver driver;
    WebDriverWait wait;

    public PageObjectBase() {
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


}
