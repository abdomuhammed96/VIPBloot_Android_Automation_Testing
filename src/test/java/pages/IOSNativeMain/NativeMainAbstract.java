package pages.IOSNativeMain;

import com.google.gson.JsonObject;

public abstract class NativeMainAbstract extends MainPO {

    public NativeMainAbstract() {
        super();
    }

    public abstract void clickOnIOSButton(String args);

    public abstract void writeIOSTextToUITextField(String args);

    public abstract JsonObject[] captureEvents();

    public abstract boolean validateElementValue(String key, String value, int eventIndex);

    public abstract boolean checkElementIsExisted(String key, int eventIndex);

    public abstract boolean checkNumberOfEvents(int arg0);

    public abstract boolean checkNoCapturedEvents();

    public abstract boolean validateEventElement(String key, String value, String eventType, String eventElement);


//    public abstract void pressButton(String arg0);
}
