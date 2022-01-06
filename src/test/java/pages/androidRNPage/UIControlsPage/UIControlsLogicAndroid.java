package pages.androidRNPage.UIControlsPage;

import base.LogCapture;
import base.LogCompare;
import com.google.gson.JsonObject;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.WebElement;

import java.time.Duration;

import static io.appium.java_client.touch.LongPressOptions.longPressOptions;
import static io.appium.java_client.touch.offset.ElementOption.element;

public class UIControlsLogicAndroid extends UIControlsAbstract {

    LogCapture logCapture = new LogCapture();
    TouchAction action;

    public UIControlsLogicAndroid() {
        super();

    }

    @Override
    public void sampleClickOnSampleElement(MobileElement elementX)  {
        waitForVisibility(elementX);
        elementX.click();
    }


    @Override
    public void ClearLog() {
        LogCapture.clearLog();
    }

    @Override
    public void scrollAndClickOnSampleElementByName(String name) {
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                + name +
                "\").instance(0))")).click();
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }




    @Override
    public void captureAndCompareEvents() {
        try { Thread.sleep(10000); } catch (Exception ign) {}
        JsonObject[] jsonList = logCapture.captureEvents(driver);
        try { Thread.sleep(3000); } catch (Exception ign) {}
        logCapture.clearLog();
        //LogCompare.compareEvents(jsonList, jsonList);
    }

    @Override
    public boolean captureAndCompareParameter(String key, String value, int eventIndex) {
        return LogCompare.compareKeyValue(key, value, logCapture.getLogs()[eventIndex]);
    }

    @Override
    public void scrollByName(String name)
    {
        driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0))" +
                        ".scrollIntoView(new UiSelector().textContains(\""
                        + name +
                        "\").instance(0))"));

    }

    @Override
    public void LongPress(String name) throws InterruptedException {
       WebElement x= driver.findElement(MobileBy.AndroidUIAutomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0))" +
                        ".scrollIntoView(new UiSelector().textContains(\""
                        +name+
                        "\").instance(0))"));

         action = new TouchAction(driver).longPress(longPressOptions
                ().withElement(element(x)).withDuration(Duration.ofMillis(10000))).release().perform();
        Thread.sleep(5000);

    }

    @Override
    public void Slide() throws InterruptedException {
        //Get start point of seekbar.
        int startX = Slider.getLocation().getX();

        //Get vertical location of seekbar.
        int yAxis = Slider.getLocation().getY();

        //Set slidebar move to position.
        // this number is calculated based on (offset + 3/4width)
        int moveToXDirectionAt = 70 + startX;

        //Moving seekbar using TouchAction class.
      // action=new TouchAction(driver);
        action = new TouchAction(driver).longPress(longPressOptions
                ().withElement(element(Slider)).withDuration(Duration.ofMillis(1000))).moveTo(PointOption.point(moveToXDirectionAt,yAxis)).release().perform();
        Thread.sleep(400);
       // action.longPress(startX,yAxis).release().perform();
    }
    }





