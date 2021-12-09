package core;

import io.appium.java_client.MobileDriver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import java.net.MalformedURLException;

public class Hooks {
    private static MobileDriver driver;
    private final Config config = new Config();
    private DriverFactory factory;

    public Hooks() {
        setDriver(driver);
    }

    public static MobileDriver getDriver() {
        return driver;
    }

    private static void setDriver(MobileDriver driver) {
        Hooks.driver = driver;
    }

    private static void closeDriver() {
        Hooks.driver = null;
    }

    @Before(order = 1)
    public void beforeAll() throws MalformedURLException {
        if (driver == null) {
            factory = new DriverFactory(config.getUrl(), config.getCapabilities());
            setDriver(factory.createDriver());
        }
    }

    @After()
    public void afterScenario(){
        driver.closeApp();
        closeDriver();
        try { Thread.sleep(3000); } catch (Exception ign) {}
    }


}
