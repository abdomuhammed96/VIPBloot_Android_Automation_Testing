package pages.androidNative.UIEventsPage;

import base.AndroidNativePageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class UIEventsPO extends AndroidNativePageObjectBase {

    public UIEventsPO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/rbtwo"),
    })
    public MobileElement Female_RadioButton;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/toggleswitch"),
    })
    public MobileElement ON_OFF_btn;

    @FindAll({
            @FindBy(how = How.ID, using = "android:id/text1"),
    })
    public MobileElement Spinner;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/ratingbar"),

            })
    public MobileElement RatingBar;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/seekbarr"),

    })
    public MobileElement Slider;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_calendar_view"),

    })
    public MobileElement CalenderView;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_touch_listener"),

    })
    public MobileElement TouchListener;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_date_picker"),

    })
    public MobileElement DatePicker;


    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_numberPicker"),

    })
    public MobileElement NumPicker;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/dialogbox"),

    })
    public MobileElement AlertDialog;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_time_picker"),

    })
    public MobileElement TimePicker;

    @FindAll({
            @FindBy(how = How.ID, using = "com.vodafone.smapi.test:id/btn_containers"),

    })
    public MobileElement Containers;


    @FindAll({
            @FindBy(how = How.XPATH, using = "//android.view.View[@content-desc=\"25 May 2022\"]"),

    })
    public MobileElement CertainDateForCalenderView;


    @FindAll({
            @FindBy(how = How.XPATH, using = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.NumberPicker/android.widget.Button[2]"),

    })
    public MobileElement SelectingNumber;


    @FindAll({
            @FindBy(how = How.ID, using = "android:id/button1"),

    })
    public MobileElement OKButtonForDatePicker;

    @FindAll({
            @FindBy(how = How.ID, using = "android:id/button1"),

    })
    public MobileElement OKButtonForAlert;

    @FindAll({
            @FindBy(how = How.ID, using = "android:id/button2"),

    })
    public MobileElement CancelButtonForAlert;





}
