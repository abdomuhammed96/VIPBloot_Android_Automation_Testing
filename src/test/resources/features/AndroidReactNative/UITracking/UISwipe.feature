Feature: checking Opening UI Swipe Page events
# data table
#  Scenario Outline: Check App Launch Events
  Background: User Opens App and clicks on UI Swipe
    When Capture events for UI Swipe
    When user clicks on ["UI Swipe"]+
    When Capture events for UI Swipe


  Scenario: Check page events on clicking on UI Swipe

    Then Capture UI Swipe page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Swipe page events And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture UI Swipe page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Swipe page events And Compare Parameter ["event-type" "Page" 0]

    Then Capture UI Swipe page events And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture UI Swipe page events And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture UI Swipe page events And Compare Parameter ["page-name" "Main" 1]
    Then Capture UI Swipe page events And Compare Parameter ["event-type" "Page" 1]

    Then Capture UI Swipe page events And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture UI Swipe page events And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture UI Swipe page events And Compare Parameter ["page-name" "UITracking" 2]
    Then Capture UI Swipe page events And Compare Parameter ["event-type" "Page" 2]



  Scenario: Check UI Swipe
    When refresh page
    When Capture events for UI Swipe
    Then Capture UI Swipe page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Swipe page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Swipe page events And Compare Parameter ["event-description" "Swiped page for refresh" 0]
    Then Capture UI Swipe page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Swipe page events And Compare Parameter ["event-type" "UISwipe" 0]
    Then Capture UI Swipe page events And Compare Parameter ["event-element" "RefreshControl - SwipeRefreshLayout" 0]








