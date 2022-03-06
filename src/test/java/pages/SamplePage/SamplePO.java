package pages.SamplePage;

import base.AndroidReactNativePageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class SamplePO extends AndroidReactNativePageObjectBase {

    public SamplePO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "android"),
            @FindBy(how = How.ID, using = "iOS")
    })
    public WebElement SAMPLE_ELEMENT;

}
