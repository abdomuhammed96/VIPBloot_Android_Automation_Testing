package pages.androidNative.UserIdPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class UserIdPO extends AndroidNativePageObjectBase {

    public UserIdPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/et_user_id"),
    })
    public MobileElement UserIdTxtxbox;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_seclib_set_user_id"),
    })
    public MobileElement Setbtn;





}
