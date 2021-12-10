Feature: check AppLaunch event

  Scenario: Check NO Network events captured while SMAPI:OFF Network:ON Verbose:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Crash events captured while SMAPI:OFF Network:ON Verbose:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Not defined"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Navigation events captured while SMAPI:OFF Network:ON Verbose:ON
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Stack Navigator"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Network events captured while SMAPI:ON Network:ON Verbose:OFF
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch Verbose ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Crash events captured while SMAPI:ON Network:ON Verbose:OFF
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Switch Verbose ON-OFF
    When Scroll and click "Not defined"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Check NO Navigation events captured while SMAPI:ON Network:ON Verbose:OFF
    Given User opens App
    When Capture Events;
    When Switch Verbose ON-OFF
    When Switch SMAPI ON-OFF
    When Scroll and click "Stack Navigator"
    Then Pause Time "2000" ms
    When Capture Events;
    Then No Events Captured

  Scenario: Click on Log Component
    Given User opens App
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["event-element" "AppLaunch" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    When Scroll and click "press"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "UICustom" 0]
    Then Capture And Compare Parameter ["event-element" "Component" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]

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

  Scenario: Check Events when Open webview
    Given User opens App
    When Capture Events;
    When Scroll and click "Open WebView"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "WebView" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "WebView" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Scroll and click "APPEND SESSION"
