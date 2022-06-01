package base;

import com.google.gson.JsonObject;

import java.util.Arrays;

public class LogCompare {
	
	public static JsonObject[] logs;

//	/**
//	 * @author Shaher Amin
//	 * @param events
//	 * Compare the Expected list of event with captured one from android emulator
//	 */
//	public static void compareEvents(JsonObject[] events, JsonObject[] logs) {
//		for (int i = 0; i < events.length; i++) {
//			try {
//				//loop on all events and compare each key from the captured and expected one
//				compareEvent(events[i], logs[i], i);
//			} catch (Exception e) {
//				System.out.println("Wrong implementation for Events");
//				e.printStackTrace();
//			}
//		}
//	}
	
//	/**
//	 * @author Shaher Amin
//	 * @param event, Captured Event, Event Index
//	 * Compare each key in the Expected Event and Captured Event
//	 * it will assert if they are not matched
//	 */
//	public static void compareEvent(JsonObject event, JsonObject log, int eventIndex) {
//
//		Set<Map.Entry<String, JsonElement>> entries = event.entrySet();
//		for (Map.Entry<String, JsonElement> entry: entries) {
//			String key = entry.getKey().toString();
//			if (!event.get(key).equals(log.get(key))){
//			}
//		}
//	}

	/**
	 *  Captured Event, Event Index
	 *  Compare each key in the Expected Event and Captured Event
	 *  it will assert if they are not matched
	 * @return
	 * @author Shaher Amin
	 */
	public static boolean compareEvent(JsonObject[] events, String eventType, String eventElement, String expectedKey, String expectedValue) {

		int index;
		for (index = 0; index < events.length; index++) {
			String eventTypeValue = events[index].get("event-type").getAsString();
			String eventElementValue = events[index].get("event-element").getAsString();
			if (eventType.equals(eventTypeValue) && eventElementValue.equals(eventElement)){
				break;
			}
		}

		if (expectedValue.equals("SMAPI_Presence")){
			if (events[index].get(expectedKey) != null)
				return true;
			return false;
		}
		else {
			String value = events[index].get(expectedKey).getAsString();
			if (value.equals(expectedValue))
				return true;
			System.out.println("Expected: " + expectedValue + " - Value: " + value);
			return false;
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
		System.out.println("Expected: " + ExpectedValue + " - Value: " + jObjValue);
		return false;
	}

	public static boolean checkValueIsNotNull(String key, JsonObject jObj) {
		String jObjValue = jObj.get(key).getAsString();
		if (jObjValue==null ||  jObjValue == "NA")
			return false;
		return true;
	}

	/**
	 * @author Shaher Amin
	 *
	 */
	public static boolean checkKey(String key, JsonObject jObj) {
		String jObjValue = jObj.get(key).getAsString();
		if (jObj.get(key) != null)
			return true;
		return false;
	}

	/**
	 * @author Shaher Amin
	 */
	public static boolean checkWebEventsCount(int eventsCount, int expectedEventsCount) {
		if (eventsCount == expectedEventsCount)
			return true;
		return false;
	}

	public static boolean checkEventCount(int eventCount, JsonObject[] logs) {
		int actualCount = Math.toIntExact(Arrays.stream(logs).filter(e -> e != null).count());
		if (actualCount == eventCount)
			return true;
		System.out.println("Expected: " + eventCount + " - Value: " + actualCount);
		return false;
	}

	public static boolean validateNoCapturedEvents(JsonObject[] logs) {
		int actualCount = Math.toIntExact(Arrays.stream(logs).filter(e -> e != null).count());
		if (actualCount == 0)
			return true;
		System.out.println("Expected: " + 0 + " - Value: " + actualCount);
		return false;
	}
}
