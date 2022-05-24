Feature: checking Opening UI Custom Page events
# data table

  Background: User Opens App and clicks on UI Controls
    When Capture events for UI Custom
    When user clicks on ["UI Custom"];
    When Capture events for UI Custom

#  Scenario Outline: Check App Launch Events
  Scenario: Check page events on clicking on UI Custom

    Then Capture UI Custom page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Custom page events And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture UI Custom page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Custom page events And Compare Parameter ["event-type" "Page" 0]

    Then Capture UI Custom page events And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture UI Custom page events And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture UI Custom page events And Compare Parameter ["page-name" "Main" 1]
    Then Capture UI Custom page events And Compare Parameter ["event-type" "Page" 1]

    Then Capture UI Custom page events And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture UI Custom page events And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture UI Custom page events And Compare Parameter ["page-name" "UITracking" 2]
    Then Capture UI Custom page events And Compare Parameter ["event-type" "Page" 2]


  Scenario: Check UI Custom event
    When Click on Custom Button
    When Capture events for UI Custom
    Then Capture UI Custom page events And Compare Parameter ["event-type" "UICustom" 0]
    Then Capture UI Custom page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Custom page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Custom page events And Compare Parameter ["event-description" "onPress" 0]
    Then Capture UI Custom page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Custom page events And Compare Parameter ["event-element" "CustomButton - CustomButtonId" 0]











