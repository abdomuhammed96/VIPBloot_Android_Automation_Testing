package pages.androidReactNative.LogComponentPage;

import com.google.gson.JsonObject;

public class AndroidNativeLogComponentPageLogic extends AndroidNativeLogComponentPageAbstract {

    public AndroidNativeLogComponentPageLogic() {
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
    public void clickOnLogComponentPage(String arg0) throws InterruptedException {

        switch (arg0){

            case "Add":
                waitForVisibility(Addbtn);
                Addbtn.click();
                break;
            case "Save":
                waitForVisibility(Savebtn);
                Savebtn.click();
                break;
            default:
        }
    }

    @Override
    public void clickOnBack()
    {
        clickOnBackButton();
    }
}