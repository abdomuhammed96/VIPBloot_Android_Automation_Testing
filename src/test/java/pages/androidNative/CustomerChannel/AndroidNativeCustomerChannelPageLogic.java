package pages.androidNative.CustomerChannel;

import com.google.gson.JsonObject;

public class AndroidNativeCustomerChannelPageLogic extends AndroidNativeCustomerChannelPageAbstract {

    public AndroidNativeCustomerChannelPageLogic() {
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
    public void clickOnCustomerChannelButton(String arg0) throws InterruptedException {

        switch (arg0){

            case "Add_Image_btn":
                waitForVisibility(Add_Image_btn);
                Add_Image_btn.click();
                break;
            case "submitReport":
                waitForVisibility(submitReport);
                submitReport.click();
                break;
            case "OKHTTP2_GET_REQUEST":
                waitForVisibility(PrivacyURL);
                PrivacyURL.click();
                break;
            default:
        }



    }

    @Override
    public void WriteInDescriptionTextBox(String url)
    {
        waitForVisibility(Description_txtbox);
        WriteInTexbox(Description_txtbox,url);
    }
}
