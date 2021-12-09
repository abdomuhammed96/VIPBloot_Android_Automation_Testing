package pages.MainPage;

import base.PageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends PageObjectBase {

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

}
