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

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_first"),
    })
    public MobileElement Next;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_network_activity"),
    })
    public MobileElement NetworkBtn;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_set_user_id"),
    })
    public MobileElement SetUserIdPageBtn;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_image_execlusion"),
    })
    public MobileElement ImageExclusionBtn;


    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_create_event"),
    })
    public MobileElement Custom_Event;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_ui_events"),
    })
    public MobileElement UIEvents;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_bug_report"),

    })
    public MobileElement BugReport;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/cb_BugReportOn"),
    })
    public MobileElement BugReport_On_Off;

    @FindAll({

            @FindBy(how = How.ID, using = "android:id/button2"),
    })
    public MobileElement Welcome_Msg_Dismiss_btn;

    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/cb_WelcomeOn"),
    })
    public MobileElement Welcome_Msg_checkBox;


    @FindAll({

            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/button_welcome_message"),
    })
    public MobileElement Welcome_Msg;

}
