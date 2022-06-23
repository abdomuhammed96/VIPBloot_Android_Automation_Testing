Feature: checking Opening Components Tracking Page events
# data table

  Background: User Opens App and clicks on Components Tracking
    When Capture events for Components Tracking
    When user clicks on ["Components tracking"]--
    When Capture events for Components Tracking
#  Scenario Outline: Check App Launch Events
  Scenario: Check page events on clicking on Components Tracking
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

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["subpage-name" "ClassComp"] for event ["Page" "NA"]


    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["subpage-name" "FunctionalComp"] for event ["Page" "NA"]



