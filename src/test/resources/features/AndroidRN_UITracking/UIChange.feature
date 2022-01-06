Feature: checking Opening UI Change Page events
# data table
#  Scenario Outline: Check App Launch Events
  Background: User Opens App and clicks on UI Change
    When Capture events for UI Change
    When user clicks on ["UI Change"]++
    When Capture events for UI Change

  Scenario: Check Clicking on UI Change

    Then Capture UI Change page events And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture UI Change page events And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture UI Change page events And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture UI Change page events And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture UI Change page events And Compare Parameter ["page-name" "Main" 1]
    Then Capture UI Change page events And Compare Parameter ["event-type" "Page" 1]

    Then Capture UI Change page events And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture UI Change page events And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture UI Change page events And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture UI Change page events And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture UI Change page events And Compare Parameter ["page-name" "UITracking" 2]
    Then Capture UI Change page events And Compare Parameter ["event-type" "Page" 2]


  Scenario: Check selecting Second Page
    When Select another page ["SECOND"]
    When Capture events for UI Change
    Then Capture UI Change page events And Compare Parameter ["event-type" "UIChange" 0]
    Then Capture UI Change page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Change page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Change page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Change page events And Compare Parameter ["event-description" "Selected Page Second" 0]
    Then Capture UI Change page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Change page events And Compare Parameter ["event-element" "TabView" 0]



  Scenario: Check selecting Third Page
    When Select another page ["THIRD"]
    When Capture events for UI Change
    Then Capture UI Change page events And Compare Parameter ["event-type" "UIChange" 0]
    Then Capture UI Change page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Change page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Change page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Change page events And Compare Parameter ["event-description" "Selected Page Third" 0]
    Then Capture UI Change page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Change page events And Compare Parameter ["event-element" "TabView" 0]

