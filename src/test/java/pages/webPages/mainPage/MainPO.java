package pages.webPages.mainPage;

import base.WebPageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MainPO extends WebPageObjectBase {

    public MainPO(){super();}

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[3]/div[1]/div/p/button[3]"),
    })
    public WebElement Change_Storage_Type;

}
