Feature: check AppLaunch event

  Scenario: Check NO Network events captured while SMAPI:OFF Network:ON Verbode:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Crash events captured while SMAPI:OFF Network:ON Verbode:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Not defined"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Navigation events captured while SMAPI:OFF Network:ON Verbode:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Stack Navigator"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Network events captured while SMAPI:ON Network:ON Verbode:OFF
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch Verbose ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Crash events captured while SMAPI:ON Network:ON Verbode:OFF
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch Verbose ON-OFF
    When Scroll and click "Not defined"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Navigation events captured while SMAPI:ON Network:ON Verbode:OFF
    Given User opens App
    When Capture Events;
    When Switch Verbose ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Stack Navigator"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check Start/Stop Event
    Given User opens App
    When Capture Events;
    When Scroll and click "Start Timer"
    When Scroll and click "StopTimer"
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "timerTestElement"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Application" "timerTestElement"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Application" "timerTestElement"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "timerTestElement"]
    Then Validate Android RN Element ["event-element" "timerTestElement"] for event ["Application" "timerTestElement"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "timerTestElement"]

#   /////////////////Environment Page////////////////////
  Scenario: Check Edit Environment Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit Environment
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

  Scenario: Check Edit Environment Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit Environment
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

  Scenario: Check Edit Environment Page Events When Done
    Given User opens App
    When Capture Events;
    When Edit Environment
    Then Pause Time "2000" ms
    When Capture Events;
    Then Write "Test"
    Then Press Done
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

#   /////////////////Trace_transaction_ID_Key////////////////////
  Scenario: Check Edit Trace_transaction_ID_Key Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit Trace_transaction_ID_Key
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

  Scenario: Check Edit Trace_transaction_ID_Key Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit Trace_transaction_ID_Key
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

  Scenario: Check Edit Trace_transaction_ID_Key Page Events When Done
    Given User opens App
    When Capture Events;
    When Edit Trace_transaction_ID_Key
    Then Pause Time "2000" ms
    When Capture Events;
    Then Write "Test"
    Then Press Done
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

#   /////////////////User_ID////////////////////
  Scenario: Check Edit User_ID Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]

  Scenario: Check Edit User_ID Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "EditText"] for event ["Page" "NA"]
    

  Scenario: Check Edit User_ID value in Network events after edit
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;
    Then Write "Test"
    Then Press Done
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Google.com"
    Then Pause Time "8000" ms
    When Capture Events;

    Then Validate Android RN Element ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]