package pages.androidNative.UserIdPage;

import com.google.gson.JsonObject;

public class AndroidNativeUserIdLogic extends AndroidNativeUserIdPageAbstract {

    public AndroidNativeUserIdLogic() {
        super();
    }




    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public boolean validateElementValue(String key, String value, int eventIndex) {
        return ValidateElementValue(key, value, eventIndex);
    }

    @Override
    public void clickOnUserIdPage(String arg0) throws InterruptedException {

        switch (arg0){

            case "Set_User_Id":
                waitForVisibility(Setbtn);
                Setbtn.click();
                break;
            default:
        }
    }

    @Override
    public void WriteInUserIdTextBox(String x)
    {
        waitForVisibility(UserIdTxtxbox);
        WriteInTexbox(UserIdTxtxbox,x);
    }

    @Override
    public void clickOnBack()
    {
        clickOnBackButton();
    }
}