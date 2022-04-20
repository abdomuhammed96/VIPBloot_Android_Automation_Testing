package pages.androidNative.CustomEventPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class CustomEventPO extends AndroidNativePageObjectBase {

    public CustomEventPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_save"),
    })
    public MobileElement Save;



}
