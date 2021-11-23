package base;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import com.google.gson.JsonObject;
import io.appium.java_client.MobileDriver;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.logging.LogEntry;
import org.testng.Assert;

public class LogCapture {
	private static JsonObject[] jsonList = new JsonObject[10];
	/*
	 * This class is responsible to capture logs from android emulator
	 * after capturing the logs it start parsing the logs into events
	 * 
	 * Example of event:
	 * 
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-type": "Application",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "device-orientation": "Portrait",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-transaction-id": "5e82bcf5-00f9-4ee3-af4c-802673251a19",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-timestamp": 1633350268535,
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-session-id": "50195252-8742-45b9-8a7d-45877faa83ce",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-net-type": "WiFi",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-net-band": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-app-state": "Foreground",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-description": "6.739 sec",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-element": "AppLaunch",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "page-name": "Main",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "subpage-name": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-user-id": "NA",
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "x-vf-trace-tid": "NA"
	10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB: }
	*/

	/**
	 * @author Shaher Amin
	 * @return the saved captured logs from android emulator 
	 */
	public JsonObject[] getLogs() {
		return jsonList;
	}
	
	/**
	 * @author Shaher Amin
	 * Clear log from android emulator
	 */
	public static void clearLog(){
        try {
            Process process = new ProcessBuilder()
            .command("logcat", "-c")
            .redirectErrorStream(true)
            .start();
       } catch (IOException e) {
       }
   }

	/**
	 * @author Shaher Amin
	 * @param driver
	 * @return Captured Logs from android emulator
	 */
	public static JsonObject[] captureEvents(MobileDriver driver) {
    	//Get all log in list. each logentry represents line from log
		for (int i = 0; i< jsonList.length; i++){
			jsonList[i] = new JsonObject();
		}

//		JSONObject[] jsonList = new JSONObject[10];
    	List<LogEntry> logEntries = driver.manage().logs().get("logcat").filter(Level.ALL);
    	int eventIndex = 0;

    	for (int j = 0; j < logEntries.size(); j++) {    		
    		String key = null;
    		String value = null;
    		// filter in logEntries List on the String contains Seclib
    		if (logEntries.get(j).getMessage().contains("SecLib:SqliteDB: {")) {

//    			JSONObject json = new JSONObject();
    			
    			//when the it contains "SecLib:SqliteDB: {" thant means I capurted the first line in the event
    			for (int i = j+1; i < logEntries.size(); i++) {
	    			//loop on the following lines to capture an events and ends when it contains "}"
    				String logMsg = logEntries.get(i).getMessage();
					
    				if (logMsg.contains("SecLib:SqliteDB: }")) {
    					eventIndex++;
    					j=i;
    					break;
    				}
    				// Parsing the line to catch the key in the event and its value
					/*
					 * Example
					 * 
					 * 10-04 14:24:29.817 15654 15704 I SecLib:SqliteDB:   "event-type": "Application",
					 * Key = event-type
					 * Value = Application
					*/
    				String[] slist = StringUtils.substringsBetween(logMsg, "\"", "\"");
    				try {
    					key =  slist[0];
        				value = slist[1];
					} catch (ArrayIndexOutOfBoundsException e) {
						if (key.equals("x-vf-trace-timestamp"))
							value = "NA";
						else {
							Assert.assertNull(slist[0], "No Key found");
						}
					}
					jsonList[eventIndex].addProperty(key, value);
					/////////////////////////////////////////////
//					String s = jsonList[eventIndex].get(key).toString();
//					System.out.println("Value of key: " + key + " equal: " + s);

    			}
    		}
		}
    	return jsonList;
    }
}
