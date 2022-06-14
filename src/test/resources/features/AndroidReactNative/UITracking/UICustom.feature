Feature: checking Opening UI Custom Page events
# data table

  Background: User Opens App and clicks on UI Controls
    When Capture events for UI Custom
    When user clicks on ["UI Custom"];
    When Capture events for UI Custom

#  Scenario Outline: Check App Launch Events
  Scenario: Check page events on clicking on UI Custom

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


  Scenario: Check UI Custom event
    When Click on Custom Button
    When Capture events for UI Custom
    Then Validate Android RN Element ["event-type" "UICustom"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["event-description" "onPress"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UICustom" "CustomButton - CustomButtonId"]
    Then Validate Android RN Element ["event-element" "CustomButton - CustomButtonId"] for event ["UICustom" "CustomButton - CustomButtonId"]











