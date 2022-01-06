package pages.webPages.mainPage;

import com.google.gson.JsonObject;
import org.openqa.selenium.By;

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
    public void clickChangeStorageType() {
        waitForVisibility(driver.findElement(By.xpath("/html/body/div[3]/div[1]/div/p/button[3]")));
        driver.findElement(By.xpath("/html/body/div[3]/div[1]/div/p/button[3]")).click();
    }

    @Override
    public boolean CompareParameter(String key, String value, int eventIndex) {
        return compareParameter(key, value, eventIndex);
    }

}