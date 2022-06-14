Feature: checking Opening UI Swipe Page events
# data table
#  Scenario Outline: Check App Launch Events
  Background: User Opens App and clicks on UI Swipe
    When Capture events for UI Swipe
    When user clicks on ["UI Swipe"]+
    When Capture events for UI Swipe


  Scenario: Check page events on clicking on UI Swipe

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]



  Scenario: Check UI Swipe
    When refresh page
    When Capture events for UI Swipe
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["event-description" "Swiped page for refresh"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["event-type" "UISwipe"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]
    Then Validate Android RN Element ["event-element" "RefreshControl - SwipeRefreshLayout"] for event ["UISwipe" "RefreshControl - SwipeRefreshLayout"]








