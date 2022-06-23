Feature: Check Log component & Open Web View

  Scenario: Check Events when Click on Log Component
    Given User opens App
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["event-element" "AppLaunch"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "AppLaunch"]
    When Scroll and click "press"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "UICustom"] for event ["UICustom" "Component"]
    Then Validate Android RN Element ["event-element" "Component"] for event ["UICustom" "Component"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["UICustom" "Component"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UICustom" "Component"]

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

  Scenario: Check Events when Open webview
    Given User opens App
    When Capture Events;
    When Scroll and click "Open WebView"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "WebView"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "WebView"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "Stay Time"]
    Then Scroll and click "APPEND SESSION"
