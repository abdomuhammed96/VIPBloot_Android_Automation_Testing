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

    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "timerTestElement" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

#   /////////////////Environment Page////////////////////
  Scenario: Check Edit Environment Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit Environment
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

  Scenario: Check Edit Environment Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit Environment
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

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

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-element" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

#   /////////////////Trace_transaction_ID_Key////////////////////
  Scenario: Check Edit Trace_transaction_ID_Key Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit Trace_transaction_ID_Key
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

  Scenario: Check Edit Trace_transaction_ID_Key Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit Trace_transaction_ID_Key
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

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

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

#   /////////////////User_ID////////////////////
  Scenario: Check Edit User_ID Page Events When Opens
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

  Scenario: Check Edit User_ID Page Events When Cancel
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;
    Then Press Cancel
    Then Pause Time "2000" ms
    When Capture Events;

    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "EditText" 0]

    Then Capture And Compare Parameter ["event-type" "Page" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Capture And Compare Parameter ["page-name" "EditText" 2]

  Scenario: Check Edit User_ID value in events after edit
    Given User opens App
    When Capture Events;
    When Edit User_ID
    Then Pause Time "2000" ms
    When Capture Events;
    Then Write "Test"
    Then Press Done
    When Capture Events;

    Then Capture And Compare Parameter ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25" 0]
    Then Capture And Compare Parameter ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25" 1]
    Then Capture And Compare Parameter ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25" 2]

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

    Then Capture And Compare Parameter ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25" 0]
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]