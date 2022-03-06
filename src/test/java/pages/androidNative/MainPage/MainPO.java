package pages.androidNative.MainPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends AndroidNativePageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/cb_SMAPIOn"),
    })
    public MobileElement SMAPI_ON_OFF;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_start_timer"),
    })
    public MobileElement Start_timer;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_stop_timer"),
    })
    public MobileElement Stop_timer;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_events"),
    })
    public MobileElement Database_Events;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_components"),
    })
    public MobileElement Log_Custom_Components;

}
