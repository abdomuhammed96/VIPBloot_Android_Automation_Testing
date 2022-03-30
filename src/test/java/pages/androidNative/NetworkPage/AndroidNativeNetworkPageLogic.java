package pages.androidNative.NetworkPage;

import com.google.gson.JsonObject;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class AndroidNativeNetworkPageLogic extends AndroidNativeNetworkPageAbstract {

    public AndroidNativeNetworkPageLogic() {
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
    public void clickOnNetworkButton(String arg0) throws InterruptedException {

        switch (arg0){

            case "OKHTTP3_GET_REQUEST":
                waitForVisibility(OKHTTP3_GET_REQUEST);
                OKHTTP3_GET_REQUEST.click();
                break;
            case "OKHTTP3_POST_REQUEST":
                waitForVisibility(OKHTTP3_POST_REQUEST);
                OKHTTP3_POST_REQUEST.click();
                break;
            case "OKHTTP2_GET_REQUEST":
                waitForVisibility(OKHTTP2_GET_REQUEST);
                OKHTTP2_GET_REQUEST.click();
                break;
            case "OKHTTP2_POST_REQUEST":
                waitForVisibility(OKHTTP2_POST_REQUEST);
                OKHTTP2_POST_REQUEST.click();
                break;
            case "RETROFIT_WITH_OKHTTP2":
                waitForVisibility(RETROFIT_WITH_OKHTTP2);
                RETROFIT_WITH_OKHTTP2.click();
                break;
            case "URL_CONNECTION_GET_REQUEST":
                waitForVisibility(URL_CONNECTION_GET_REQUEST);
                URL_CONNECTION_GET_REQUEST.click();
                break;
            case "URL_CONNECTION_POST_REQUEST":
                waitForVisibility(URL_CONNECTION_POST_REQUEST);
                URL_CONNECTION_POST_REQUEST.click();
                break;
            case "VOLLEY_GET_REQUEST":
                waitForVisibility(VOLLEY_GET_REQUEST);
                VOLLEY_GET_REQUEST.click();
                break;
            case "VOLLEY_POST_REQUEST":
                waitForVisibility(VOLLEY_POST_REQUEST);
                VOLLEY_POST_REQUEST.click();
                break;
            case "CUSTOM_NETWORK_EVENT":
                waitForVisibility(CUSTOM_NETWORK_EVENT);
                CUSTOM_NETWORK_EVENT.click();
                break;
            default:
        }

    }
}