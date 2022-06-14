Feature: checking Opening UI Change Page events
# data table
#  Scenario Outline: Check App Launch Events
  Background: User Opens App and clicks on UI Change
    When Capture events for UI Change
    When user clicks on ["UI Change"]++
    When Capture events for UI Change

  Scenario: Check Clicking on UI Change

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


  Scenario: Check selecting Second Page
    When Select another page ["SECOND"]
    When Capture events for UI Change
    Then Validate Android RN Element ["event-type" "UIChange"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["event-description" "Selected Page Second"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["event-element" "TabView"] for event ["UIChange" "TabView"]



  Scenario: Check selecting Third Page
    When Select another page ["THIRD"]
    When Capture events for UI Change
    Then Validate Android RN Element ["event-type" "UIChange"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["event-description" "Selected Page Third"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIChange" "TabView"]
    Then Validate Android RN Element ["event-element" "TabView"] for event ["UIChange" "TabView"]

