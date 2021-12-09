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