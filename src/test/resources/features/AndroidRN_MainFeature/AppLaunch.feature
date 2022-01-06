Feature: check AppLaunch event
# data table
  Scenario: Check App Launch Events
    Given User opens App
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "AppLaunch" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

    Then Capture And Compare Parameter ["event-type" "Application" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-description" "App launched" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]

    Then Capture And Compare Parameter ["event-type" "Page" 2]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture And Compare Parameter ["event-element" "Load Time" 2]
    Then Capture And Compare Parameter ["page-name" "Main" 2]

    Then Capture And Compare Parameter ["event-type" "Page" 3]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 3]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 3]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 3]
    Then Capture And Compare Parameter ["event-description" "Loaded" 3]
    Then Capture And Compare Parameter ["page-name" "Main" 3]

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