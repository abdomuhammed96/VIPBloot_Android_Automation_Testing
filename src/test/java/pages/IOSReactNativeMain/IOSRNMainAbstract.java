package pages.IOSReactNativeMain;

import com.google.gson.JsonObject;

public abstract class IOSRNMainAbstract extends MainPO {

    public IOSRNMainAbstract() {
        super();
    }

    public abstract void clickOnIOSButton(String args);
//
//    public abstract void writeIOSTextToUITextField(String args);

    public abstract JsonObject[] captureEvents();

//    public abstract boolean validateElementValue(String key, String value, int eventIndex);

//    public abstract boolean checkElementIsExisted(String key, int eventIndex);
//
//    public abstract boolean checkNumberOfEvents(int arg0);
//
//    public abstract boolean checkNoCapturedEvents();

    public abstract boolean validateEventElement(String key, String value, String eventType, String eventElement);

    public abstract boolean validateNumOfEventsCaptured(int arg0);

    public abstract void setIOSRNUserID(String arg0);


//    public abstract void pressButton(String arg0);
}
