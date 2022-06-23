Feature: check AppLaunch event

  Scenario: Check App Launch Events
    Given User opens App
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["event-element" "AppLaunch"] for event ["Application" "AppLaunch"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "AppLaunch"]

    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Application" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Application" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]
    Then Validate Android RN Element ["event-description" "App launched"] for event ["Application" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]

  Scenario: Check Flush Events
    Given User opens App
    When Capture Events;
    Then Check currentDbCount equal [4]
    Then Check flushCountSize equal [10]
    Then Press Flush
    When Pause Time "1000" ms
    When Capture Events;
    Then Check Total_event_size equal [4]
    Then Check Total_unique_event_size equal [4]
    Then Compare Flush Event Parameter ["Content-Type" "application\/json"]
    Then Compare Flush Event Parameter ["x-vf-trace-source" "android:com.vodafone.react.smapi.test"]
    Then Compare Flush Event Parameter ["x-vf-trace-source-version" "1.0"]
    Then Compare Flush Event Parameter ["x-vf-trace-subject-region" "us"]
    Then Compare Flush Event Parameter ["seclib-client-version" "5.2.1"]
    Then Compare Flush Event Parameter ["x-vf-trace-platform" "Android"]
    Then Compare Flush Event Parameter ["x-vf-trace-os-version" "R"]
    Then Compare Flush Event Parameter ["x-vf-trace-application-name" "example"]
    Then Compare Flush Event Parameter ["x-vf-trace-locale" "US"]