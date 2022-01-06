package pages.androidRNPage.MainPage;

import com.google.gson.JsonObject;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;

import java.time.Duration;

import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofMillis;

public class MainPageLogicAndroid extends MainPageAbstract {

    public MainPageLogicAndroid() {
        super();
    }

    @Override
    public void scrollAndClickOnSampleElementByName(String name) {
        scrollAndClick(name);
    }

    @Override
    public void flush() {
        waitForVisibility(Flush);
        Flush.click();
    }

    public void configureSMAPI(String name){
        scrollTo(name);
        switch(name) {
            case "SMAPI on/off":
                waitForVisibility(SMAPI_ON_OFF);
                SMAPI_ON_OFF.click();
                break;
            case "Verbose":
                waitForVisibility(VerboseON_OFF);
                VerboseON_OFF.click();
                break;
            case "Network":
                waitForVisibility(Network_ON_OFF);
                Network_ON_OFF.click();
                break;
            case "Environment":
                waitForVisibility(Environment);
                Environment.click();
                break;
            case "Trace transaction ID Key":
                waitForVisibility(Trace_transacttion_ID_Key);
                Trace_transacttion_ID_Key.click();
                break;
            case "User ID":
                waitForVisibility(User_ID);
                User_ID.click();
                break;
            default:
        }
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public Boolean checkNoEventsCaptured() {
        return captureNoEvents();
    }

    @Override
    public boolean captureAndCompareParameter(String key, String value, int eventIndex) {
        return compareParameter(key, value, eventIndex);
    }

    @Override
    public void clearLogs() {
        clearAllLogs();
    }

    @Override
    public void cancel() {
        waitForVisibility(Cancel);
        Cancel.click();
    }

    @Override
    public void done() {
        waitForVisibility(Done);
        Done.click();
    }

    @Override
    public void writeText(String text) {
        waitForVisibility(Edit_Text);
        Edit_Text.clear();
        Edit_Text.setValue(text);
    }

    @Override
    public boolean checkCurrentDbCountEqualValue(int arg) {
        return checkCurrentDbCountEqual(arg);
    }

    @Override
    public boolean checkFlushCountSizeEqualValue(int arg) {
        return checkFlushCountSizeEqual(arg);
    }

    @Override
    public boolean checkTotalEventSizeValue(int arg) {
        return checkTotalEventSize(arg);
    }

    @Override
    public boolean checkTotalUniqueEventSizeValue(int arg) {
        return checkTotalUniqueEventSize(arg);
    }

    @Override
    public boolean CompareFlushEventParameter(String key, String value) {
        return compareFlushEventParameter(key, value);
    }
    @Override
    public void RefreshPage()
    {
        int deviceWidth = driver.manage().window().getSize().getWidth();
        int deviceHeight = driver.manage().window().getSize().getHeight();
//        System.out.println(deviceHeight);
//        System.out.println(deviceWidth);
        int midX = (deviceWidth / 2);
        int midY = (deviceHeight / 2);
        int bottomEdge = (int) (deviceHeight - 10);
//        System.out.println(bottomEdge);
//        System.out.println("--------------------------------------------------------");
        new TouchAction(driver)
                .press(point(midX,midY))
                .waitAction(waitOptions(ofMillis(200)))
                .moveTo(point(midX, bottomEdge))
                .release().perform();
    }
    @Override
    public void PushAppIntoBackground()
    {
        ((AppiumDriver)driver).runAppInBackground(Duration.ofSeconds(10));
    }
}