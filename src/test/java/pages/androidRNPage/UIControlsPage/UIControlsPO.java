package pages.androidRNPage.UIControlsPage;

import base.PageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class UIControlsPO extends PageObjectBase {

    public UIControlsPO(){super();}

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.Switch'])[1]"),
    })
   public MobileElement UI_Switch;

    @FindAll({
            @FindBy(how = How.XPATH, using = "(//*[@class='android.widget.SeekBar'])[1]"),
    })
    public MobileElement Slider;




}
