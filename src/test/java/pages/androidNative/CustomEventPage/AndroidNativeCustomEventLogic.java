package pages.androidNative.CustomEventPage;

import com.google.gson.JsonObject;

public class AndroidNativeCustomEventLogic extends AndroidNativeCustomEventPageAbstract {

    public AndroidNativeCustomEventLogic() {
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
    public void clickOnCustomEventPage(String arg0) {

        switch (arg0){

            case "Save":
                waitForVisibility(Save);
                Save.click();
                break;
            default:
        }
    }


}