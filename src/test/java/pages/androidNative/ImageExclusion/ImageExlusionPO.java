package pages.androidNative.ImageExclusion;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class ImageExlusionPO extends AndroidNativePageObjectBase {

    public ImageExlusionPO(){super();}

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/et_image_url"),
    })
    public MobileElement URL_TextBox;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_okhttp3_download_image"),
    })
    public MobileElement OKHTTP3_Download_Image;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_okhttp2_download_image"),
    })
    public MobileElement OKHTTP2_Download_Image;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_retrofitOkhttp2_download_image"),
    })
    public MobileElement Retrofit_Download_Image;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_urlconnection_download_image"),
    })
    public MobileElement URL_Connection_Download_Image;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_volly_download_image"),
    })
    public MobileElement Volley_Download_Image;

}
