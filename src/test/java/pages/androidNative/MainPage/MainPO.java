package pages.androidNative.MainPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends AndroidNativePageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[2]/android.widget.Button[5]"),
    })
    public MobileElement EnterAsGuest;

    @FindAll({
            @FindBy(how = How.XPATH, using = "\t\n" +
                    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.TextView"),
    })
    public MobileElement PlayNow;


}
