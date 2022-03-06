package pages.androidReactNative.MainPage;

import base.AndroidReactNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends AndroidReactNativePageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.Switch'])[1]"),
    })
    public MobileElement SMAPI_ON_OFF;

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.Switch'])[2]"),
    })
    public MobileElement VerboseON_OFF;

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.Switch'])[3]"),
    })
    public MobileElement Network_ON_OFF;

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.EditText'])"),
    })
    public MobileElement Edit_Text;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.FrameLayout/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView" +
                    "/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup" +
                    "/android.view.ViewGroup"),
    })
    public MobileElement Environment;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.FrameLayout/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[2]" +
                    "/android.widget.ScrollView/android.view.ViewGroup" +
                    "/android.view.ViewGroup[5]/android.view.ViewGroup" +
                    "/android.view.ViewGroup"),
    })
    public MobileElement Trace_transacttion_ID_Key;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup" +
                    "/android.view.ViewGroup[6]/android.view.ViewGroup/android.view.ViewGroup"),
    })
    public MobileElement User_ID;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup[3]\n"),
    })
    public MobileElement Done;

    @FindAll({
            @FindBy(how = How.XPATH, using = "\t\n" +
                    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout" +
                    "/android.widget.FrameLayout/android.widget.LinearLayout" +
                    "/android.widget.FrameLayout/android.widget.FrameLayout" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]" +
                    "/android.view.ViewGroup[2]"),
    })
    public MobileElement Cancel;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.LinearLayout/android.widget.FrameLayout" +
                    "/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup" +
                    "/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup" +
                    "/android.view.ViewGroup[1]/android.view.ViewGroup[3]"),
    })
    public MobileElement Flush;
}
