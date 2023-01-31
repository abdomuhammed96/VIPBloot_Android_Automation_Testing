package core;

import io.appium.java_client.remote.MobileCapabilityType;
import org.openqa.selenium.logging.LogType;
import org.openqa.selenium.logging.LoggingPreferences;
import org.openqa.selenium.remote.CapabilityType;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import static java.lang.Integer.parseInt;
import static java.lang.System.getProperty;
import static utils.PropertiesLoader.readPropertyFile;

public class Config {
    private final String platform;
    private final Map<String, Object> capabilities = new HashMap<>();
    private boolean isAndroid;
    private boolean isMobile;
    public static final String WORKSPACE = getProperty("user.dir");
    private String url;

    public Config() {
        Logger.getLogger("org.openqa.core.remote").setLevel(Level.OFF);
        Properties Prop = readPropertyFile("config/platform.properties");
        platform = System.getProperty("PLATFORM", Prop.getProperty("PLATFORM"));
        setCapabilitiesForPlatform(platform);

    }

    private void setCapabilitiesForPlatform(String platform) {
        isAndroid = platform.equalsIgnoreCase("Android");
        if (isAndroid) isMobile = true;
        if (isAndroid) setAndroidCapabilities();
    }


    private void setAndroidCapabilities() {
        Properties androidProp = readPropertyFile("config/android.properties");
        url = System.getProperty("seleniumGrid", "http://0.0.0.0:4723/wd/hub");
        capabilities.put("deviceName", System.getProperty("DEVICE_NAME", androidProp.getProperty("DEVICE_NAME")));
        capabilities.put("systemPort", parseInt(getProperty("systemPort", "8200")));
        capabilities.put("appiumVersion", "1.22.3");
        capabilities.put("autoGrantPermissions", true);
        capabilities.put("appActivity", "com.casualino.base.activities.InitialActivity");
        capabilities.put("appPackage", "co.tamatem.vipbaloot");
        capabilities.put("autoAcceptAlerts", true);
        capabilities.put("newCommandTimeout", 90000);
        capabilities.put("androidInstallTimeout", 90000);
        capabilities.put("uiautomator2ServerInstallTimeout", 120000);
        capabilities.put("adbExecTimeout", 200000);
        capabilities.put("platformVersion", System.getProperty("PLATFORM_VERSION", androidProp.getProperty("PLATFORM_VERSION")));
        capabilities.put("platformName", "Android");
        capabilities.put("noReset", false);
        //  capabilities.put("app", WORKSPACE.concat(System.getProperty("Android", androidProp.getProperty("APP"))));
        capabilities.put("app-wait-activity", "");
        capabilities.put("clearDeviceLogsOnStart", true);
        capabilities.put("–session-override",true);
    }
    String getPlatform() {
        return platform;
    }


    public Map<String, Object> getCapabilities() {
        return capabilities;
    }

    public String getUrl() {
        return url;
    }

    public boolean isAndroid() {
        return isAndroid;
    }


    public boolean isMobile() {
        return isMobile;
    }

}
