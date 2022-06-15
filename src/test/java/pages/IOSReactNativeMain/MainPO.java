package pages.IOSReactNativeMain;

import base.IOSNativePageObjectBase;
import base.IOSReactNativePageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends IOSReactNativePageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "android"),
            @FindBy(how = How.ID, using = "iOS")
    })
    public WebElement SAMPLE_ELEMENT;

    @FindAll({
            @FindBy(how = How.CLASS_NAME, using = "UITextField"),
    })
    public WebElement UserIDText;

}
