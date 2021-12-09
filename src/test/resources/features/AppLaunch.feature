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

