package pages.androidReactNative.LogComponentPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class LogComponentPO extends AndroidNativePageObjectBase {

    public LogComponentPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_add"),
    })
    public MobileElement Addbtn;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_save"),
    })
    public MobileElement Savebtn;





}
