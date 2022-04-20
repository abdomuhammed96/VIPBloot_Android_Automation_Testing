package pages.androidNative.NetworkPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class NetworkPO extends AndroidNativePageObjectBase {

    public NetworkPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/okhttp3GetRequest"),
    })
    public MobileElement OKHTTP3_GET_REQUEST;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/okhttp3PostRequest"),
    })
    public MobileElement OKHTTP3_POST_REQUEST;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/okhttp2GetRequest"),
    })
    public MobileElement OKHTTP2_GET_REQUEST;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/okhttp2PostRequest"),
    })
    public MobileElement OKHTTP2_POST_REQUEST;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/retrofitOkhttp2"),
    })
    public MobileElement RETROFIT_WITH_OKHTTP2;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/urlconnectiongetrequest"),
    })
    public MobileElement URL_CONNECTION_GET_REQUEST;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/urlconnectionpostrequest"),
    })
    public MobileElement URL_CONNECTION_POST_REQUEST;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/volleyrequest"),
    })
    public MobileElement VOLLEY_GET_REQUEST;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/volleypostrequest"),
    })
    public MobileElement VOLLEY_POST_REQUEST;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/customrequest"),
    })
    public MobileElement CUSTOM_NETWORK_EVENT;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/cb_networkOn"),
    })
    public MobileElement Network_On_Off;


}
