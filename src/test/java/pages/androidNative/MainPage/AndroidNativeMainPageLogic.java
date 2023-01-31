package pages.androidNative.MainPage;

import com.google.gson.JsonObject;
import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.offset.PointOption;

import static io.appium.java_client.touch.offset.PointOption.point;

public class AndroidNativeMainPageLogic extends AndroidNativeMainPageAbstract {

    public AndroidNativeMainPageLogic() {
        super();
    }



    @Override
    public void clickOnButton(String arg0) throws InterruptedException {
        switch (arg0){
            case "Play Now":
                waitForVisibility(PlayNow);
                PlayNow.click();
                Thread.sleep(25000);
                break;
            case "Enter as a Guest":
                Thread.sleep(25000);
                /*waitForVisibility(EnterAsGuest);
                EnterAsGuest.click();*/
                TouchAction touchAction=new TouchAction(driver);
                touchAction.tap(PointOption.point(569, 2152)).perform();
                break;
            default:
        }
    }


}