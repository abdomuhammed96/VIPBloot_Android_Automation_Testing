package pages.SamplePage;

import base.PageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class SamplePO extends PageObjectBase {

    public SamplePO(){super();}

    @FindAll({
            @FindBy(how = How.ID, using = "android"),
            @FindBy(how = How.ID, using = "iOS")
    })
    public WebElement SAMPLE_ELEMENT;

}
