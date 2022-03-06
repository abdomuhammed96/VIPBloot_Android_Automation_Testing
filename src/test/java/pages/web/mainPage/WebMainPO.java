package pages.web.mainPage;

import base.WebPageObjectBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class WebMainPO extends WebPageObjectBase {

    @FindBy(xpath = "/html[1]/body[1]/div[3]/div[1]/div[1]/p[1]/button[1]")
    public WebElement MSISDN_1234567890;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/button[2]")
    public WebElement NOT_MSISDN_12345NOT67890;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/a[1]")
    public WebElement MSISDN_btn;

    @FindBy(xpath = "/html/body/div[3]/div[1]/div/p/a[2]")
    public WebElement NOT_MSISDN;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[3]/div[1]/div/p/button[3]"),
    })
    public WebElement Change_Storage_Type;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[2]/a"),
    })
    public WebElement Click_On_About;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/div[2]/a"),
    })
    public WebElement Click_On_Already_Have_Account;
    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[5]/a"),
    })
    public WebElement Click_On_SignUp;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div/div/div/div[2]/div/form/button"),
    })
    public WebElement Click_On_Subscribe;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[3]/a"),
    })
    public WebElement Click_On_Pricing;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[1]/div[2]/button"),
    })
    public WebElement Click_On_SignUpforfree;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[2]/div[2]/button"),
    })
    public WebElement Click_On_GetStarted;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div[1]/div[2]/div[3]/div[2]/button"),
    })
    public WebElement Click_On_ContactSales;

    @FindAll({
            @FindBy(how = How.XPATH, using = "//*[@id=\"collapsibleNavbar\"]/ul/li[4]/a"),
    })
    public WebElement Click_On_Login;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/form/div/a"),
    })
    public WebElement Click_On_ForgotPassword;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/form/button"),
    })
    public WebElement Click_On_LoginButton;

    @FindAll({
            @FindBy(how = How.XPATH, using = "/html/body/div/div/div[2]/div/div[2]/a"),
    })
    public WebElement Click_On_Dont_Have_Account;

    @FindBy(xpath = "/html/body/div[1]/div/div/a")
    public WebElement getStarted;
}