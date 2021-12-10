Feature: Click on Log Component

  Scenario: Click on Log Component
    Given User opens App
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["event-element" "AppLaunch" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    When Scroll and click "press"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "UICustom" 0]
    Then Capture And Compare Parameter ["event-element" "Component" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
