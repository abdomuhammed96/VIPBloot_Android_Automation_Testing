package pages.IOS;

import com.google.gson.JsonObject;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.offset.PointOption;

public class IOSMainLogic extends IOSMainAbstract {

    public IOSMainLogic() {
        super();
    }

    @Override
    public void clickOnIOSButton(String args) {
        MobileElement e = (MobileElement) driver.findElement(MobileBy
                .AccessibilityId(args));
        e.click();
    }

    @Override
    public void writeIOSTextToUITextField(String args) {
        MobileElement e = (MobileElement) driver.findElement(MobileBy.className("UITextField"));

        TouchAction a2 = new TouchAction(driver);
        a2.tap(PointOption.point(100,100)).perform();
        e.sendKeys(args);
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public boolean validateElementValue(String key, String value, int eventIndex) {
        return ValidateElementValue(key, value, eventIndex);
    }

    @Override
    public boolean checkElementIsExisted(String key, int eventIndex) {
        return ValidateElementExistence(key, eventIndex);
    }

    @Override
    public boolean checkNumberOfEvents(int arg0) {
        return ValidateElementCounts(arg0);
    }

    @Override
    public boolean checkNoCapturedEvents() {
        return validateNoCapturedEvents();
    }
}
