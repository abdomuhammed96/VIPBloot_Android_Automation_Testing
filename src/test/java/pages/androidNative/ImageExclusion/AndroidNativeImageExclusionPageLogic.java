package pages.androidNative.ImageExclusion;

import com.google.gson.JsonObject;

public class AndroidNativeImageExclusionPageLogic extends AndroidNativeImageExclusionPageAbstract {

    public AndroidNativeImageExclusionPageLogic() {
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
    public void clickOnImageExlusionButton(String arg0) throws InterruptedException {

        switch (arg0){

            case "OKHTTP3_Download_Image":
                waitForVisibility(OKHTTP3_Download_Image);
                OKHTTP3_Download_Image.click();
                break;
            case "OKHTTP3_POST_REQUEST":
                waitForVisibility(OKHTTP2_Download_Image);
                OKHTTP2_Download_Image.click();
                break;
            case "OKHTTP2_GET_REQUEST":
                waitForVisibility(Retrofit_Download_Image);
                Retrofit_Download_Image.click();
                break;
            case "OKHTTP2_POST_REQUEST":
                waitForVisibility(URL_Connection_Download_Image);
                URL_Connection_Download_Image.click();
                break;
            case "RETROFIT_WITH_OKHTTP2":
                waitForVisibility(Volley_Download_Image);
                Volley_Download_Image.click();
                break;
            default:
        }



    }

    @Override
    public void WriteInImageExclusionTextBox(String url)
    {
        waitForVisibility(URL_TextBox);
        WriteInTexbox(URL_TextBox,url);
    }
}
