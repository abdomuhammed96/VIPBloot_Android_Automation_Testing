package pages.MainPage;

import com.google.gson.JsonObject;

public class MainPageLogicAndroid extends MainPageAbstract {

    public MainPageLogicAndroid() {
        super();
    }

    @Override
    public void scrollAndClickOnSampleElementByName(String name) {
        scrollAndClick(name);
    }

    public void configureSMAPI(String name){

        scrollTo(name);
        switch(name) {
            case "SMAPI on/off":
                waitForVisibility(SMAPI_ON_OFF);
                SMAPI_ON_OFF.click();
                break;
            case "Verbose":
                waitForVisibility(VerboseON_OFF);
                VerboseON_OFF.click();
                break;
            case "Network":
                waitForVisibility(Network_ON_OFF);
                Network_ON_OFF.click();
                break;
            default:
        }
        try { Thread.sleep(1000); } catch (Exception ign) {}
    }

    @Override
    public JsonObject[] captureEvents() {
        return captureAllEvents();
    }

    @Override
    public Boolean checkNoEventsCaptured() {
        return captureNoEvents();
    }

    @Override
    public boolean captureAndCompareParameter(String key, String value, int eventIndex) {
        return compareParameter(key, value, eventIndex);
    }

    @Override
    public void clearLogs() {
        clearAllLogs();
    }
}
