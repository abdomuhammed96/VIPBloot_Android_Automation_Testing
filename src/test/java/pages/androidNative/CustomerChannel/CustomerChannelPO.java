package pages.androidNative.CustomerChannel;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class CustomerChannelPO extends AndroidNativePageObjectBase {

    public CustomerChannelPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/editTextDescription"),
    })
    public MobileElement Description_txtbox;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/addImgBtn"),
    })
    public MobileElement Add_Image_btn;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/submitBtn"),
    })
    public MobileElement submitReport;
    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/privacyStatement"),
    })
    public MobileElement PrivacyURL;


}
