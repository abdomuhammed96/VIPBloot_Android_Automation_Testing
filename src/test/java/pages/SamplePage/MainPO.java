package pages.SamplePage;

import base.PageObjectBase;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends PageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "android"),
            @FindBy(how = How.ID, using = "iOS")
    })
    public MobileElement SAMPLE_ELEMENT;

}
