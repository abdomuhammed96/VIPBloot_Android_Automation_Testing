package core;

import io.appium.java_client.MobileDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.ios.IOSDriver;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.logging.LogType;
import org.openqa.selenium.logging.LoggingPreferences;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.logging.Level;

public class DriverFactory {
    private final URL url;
    private final DesiredCapabilities capabilities;
    private final Config config = new Config();

    public DriverFactory(String url, Map<String, Object> map) throws MalformedURLException {
        this.url = new URL(url);
        this.capabilities = new DesiredCapabilities(map);
    }

    MobileDriver createDriver() {
        String platform = config.getPlatform().toUpperCase();
        switch (platform) {
            case "ANDROID":
                return new AndroidDriver<MobileElement>(url, capabilities);
            case "IOS":
                return new IOSDriver<MobileElement>(url, capabilities);
            default:
                throw new IllegalArgumentException(
                        String.format("Driver Factory type not implemented: [%s]", platform));
        }
    }
    WebDriver createWebDriver() {
        String browser = config.getBrowser().toUpperCase();
        WebDriver driver;

        switch (browser){
            case "CHROME":
                WebDriverManager.chromedriver().reset();
                WebDriverManager.chromedriver().setup();

                LoggingPreferences preferences = new LoggingPreferences();
                preferences.enable(LogType.BROWSER, Level.ALL);
                ChromeOptions caps = new ChromeOptions();
                caps.setCapability(CapabilityType.LOGGING_PREFS, preferences);
                caps.setCapability("goog:loggingPrefs", preferences);
                caps.addArguments();

                driver = new ChromeDriver(caps);
                driver.manage().window().maximize();
                driver.get(config.getUrl());
                return driver;
            case "FIREFOX":
                WebDriverManager.firefoxdriver().reset();
                WebDriverManager.firefoxdriver().setup();
                driver = new FirefoxDriver();
                driver.manage().window().maximize();
                driver.get(config.getUrl());
                return driver;
            default:
                throw new IllegalArgumentException(
                        String.format("Driver Factory type not implemented: [%s]", browser));
        }
    }
}
