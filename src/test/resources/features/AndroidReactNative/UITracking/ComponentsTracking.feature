Feature: checking Opening Components Tracking Page events
# data table

  Background: User Opens App and clicks on Components Tracking
    When Capture events for Components Tracking
    When user clicks on ["Components tracking"]--
    When Capture events for Components Tracking
#  Scenario Outline: Check App Launch Events
  Scenario: Check page events on clicking on Components Tracking
    Then Capture Components Tracking page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture Components Tracking page events And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture Components Tracking page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture Components Tracking page events And Compare Parameter ["event-type" "Page" 0]

    Then Capture Components Tracking page events And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture Components Tracking page events And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture Components Tracking page events And Compare Parameter ["page-name" "Main" 1]
    Then Capture Components Tracking page events And Compare Parameter ["event-type" "Page" 1]

    Then Capture Components Tracking page events And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture Components Tracking page events And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture Components Tracking page events And Compare Parameter ["page-name" "UITracking" 2]
    Then Capture Components Tracking page events And Compare Parameter ["event-type" "Page" 2]

    Then Capture Components Tracking page events And Compare Parameter ["device-orientation" "Portrait" 3]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-net-type" "WiFi" 3]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-app-state" "Foreground" 3]
    Then Capture Components Tracking page events And Compare Parameter ["event-description" "Loaded" 3]
    Then Capture Components Tracking page events And Compare Parameter ["page-name" "UITracking" 3]
    Then Capture Components Tracking page events And Compare Parameter ["event-type" "Page" 3]
    Then Capture Components Tracking page events And Compare Parameter ["subpage-name" "ClassComp" 3]


    Then Capture Components Tracking page events And Compare Parameter ["device-orientation" "Portrait" 4]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-net-type" "WiFi" 4]
    Then Capture Components Tracking page events And Compare Parameter ["x-vf-app-state" "Foreground" 4]
    Then Capture Components Tracking page events And Compare Parameter ["event-description" "Loaded" 4]
    Then Capture Components Tracking page events And Compare Parameter ["page-name" "UITracking" 4]
    Then Capture Components Tracking page events And Compare Parameter ["event-type" "Page" 4]
    Then Capture Components Tracking page events And Compare Parameter ["subpage-name" "FunctionalComp" 4]



