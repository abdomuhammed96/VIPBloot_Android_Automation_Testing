package base;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.Map;
import java.util.Set;

public class LogCompare {
	
	//private static final String Assert = null;
	public static JsonObject[] logs;
	/*
	*//**
	 * @author Shaher Amin
	 * @param logs captured
	 * 
	 *//*
	public void setLogs(JsonObject[] logs) {
		this.logs = logs;
	}
	*/
	/**
	 * @author Shaher Amin
	 * @param events
	 * Compare the Expected list of event with captured one from android emulator
	 */
	public static void compareEvents(JsonObject[] events, JsonObject[] logs) {
		for (int i = 0; i < events.length; i++) {
			try {
				//loop on all events and compare each key from the captured and expected one
				compareEvent(events[i], logs[i], i);
			} catch (Exception e) {
				System.out.println("Wrong implementation for Events");
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * @author Shaher Amin
	 * @param event, Captured Event, Event Index
	 * Compare each key in the Expected Event and Captured Event
	 * it will assert if they are not matched
	 */
	public static void compareEvent(JsonObject event, JsonObject log, int eventIndex) {

		Set<Map.Entry<String, JsonElement>> entries = event.entrySet();
		for (Map.Entry<String, JsonElement> entry: entries) {
			String key = entry.getKey().toString();
			if (!event.get(key).equals(log.get(key))){
//				System.out.println("Wrong Event_type for Event # "+ eventIndex +
//						"Expected: " + event.get(key).toString() +
//						" Actual: " + log.get(key).toString());
			}
		}
	}
	
	/**
	 * @author Shaher Amin
	 * @param ExpectedValue element, captured element
	 */
	public static boolean compareKeyValue(String key, String ExpectedValue, JsonObject jObj) {
		String jObjValue = jObj.get(key).getAsString();
		if (jObjValue.equals(ExpectedValue))
			return true;
		return false;

		/*try {
			// not required for testing
			if (eElement.equals("NA")) {
				return true;
			}
			// No data received 
			if (lElement == null) {
				return false;
			}
			// check if both are equal
			if (lElement.equals(eElement)) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("Empty Event");
			return false;
		}*/
	}

}