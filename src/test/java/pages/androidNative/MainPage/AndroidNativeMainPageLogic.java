package pages.androidNative.MainPage;

import com.google.gson.JsonObject;

import static io.appium.java_client.touch.offset.PointOption.point;

public class AndroidNativeMainPageLogic extends AndroidNativeMainPageAbstract {

    public AndroidNativeMainPageLogic() {
        super();
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
    public void clickOnButton(String arg0) {
        switch (arg0){
            case "SMAPI_ON_OFF":
                waitForVisibility(SMAPI_ON_OFF);
                SMAPI_ON_OFF.click();
                break;
            case "Start_timer":
                waitForVisibility(Start_timer);
                Start_timer.click();
                break;
            case "Stop_timer":
                waitForVisibility(Stop_timer);
                Stop_timer.click();
                break;
            case "Database_Events":
                waitForVisibility(Database_Events);
                Database_Events.click();
                break;
            case "Log_Custom_Components":
                waitForVisibility(Log_Custom_Components);
                Log_Custom_Components.click();
                break;
            default:
        }
    }
}