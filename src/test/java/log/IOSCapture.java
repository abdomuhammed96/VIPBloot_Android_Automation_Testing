package log;

import com.google.gson.JsonObject;
import io.appium.java_client.MobileDriver;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.logging.LogEntry;
import org.openqa.selenium.logging.LogType;
import org.testng.Assert;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;

public class IOSCapture {
    private static JsonObject[] jsonList;
    private static JsonObject jsonFLUSH;

    public JsonObject getFLUSHEvent() {
        return jsonFLUSH;
    }

    public JsonObject[] getLogs() {
        return jsonList;
    }

    private String getNetworkResponseCode(String logMsg){
        int startIndex = logMsg.lastIndexOf("responseCode") + "responseCode".length() + 8;
        int lastIndex = logMsg.lastIndexOf("responseCode") + "responseCode".length() + 11;
        return logMsg.substring(startIndex, lastIndex);
    }

    public JsonObject[] captureIOSEvents(MobileDriver driver) {
        jsonList = new JsonObject[10];
        jsonFLUSH = new JsonObject();

        List<LogEntry> logEntries = driver.manage().logs().get("syslog").getAll();
        int eventIndex = 0;

        for (int j = 0; j < logEntries.size(); j++) {
            String key = null;
            String value = null;
            String msg = logEntries.get(j).getMessage();

            if (msg.contains("SecLib: ") && logEntries.get(j+1).getMessage().equals("{")) {
                jsonList[eventIndex] = new JsonObject();
                for (int i = j + 2; i < logEntries.size(); i++) {
                    String logMsg = logEntries.get(i).getMessage();

                    if (logMsg.equals("}")) {
                        eventIndex++;
                        j = i;
                        break;
                    }

                    String[] slist = StringUtils.substringsBetween(logMsg, "\"", "\"");
                    try {
                        key = slist[0];
                        if(key.equals("event-description") && logMsg.contains("responseCode")){
                            value = getNetworkResponseCode(logMsg);
                        }else {
                            value = slist[1];
                        }
                    }
                    catch (ArrayIndexOutOfBoundsException e) {}
                    catch (NullPointerException e) {}
                    jsonList[eventIndex].addProperty(key, value);
                }
            }
        }
        return jsonList;
    }
}