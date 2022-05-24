Feature: check SMAPI UIControl

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["UIControl"]
    When Capture IOS Events

  Scenario: Check No events of Selected button
    When Click On IOS Button ["First"]
    Then Check No Captured Events
    When Click On IOS Button ["Second"]
    When Capture IOS Events
    When Click On IOS Button ["Second"]
    Then Check No Captured Events

  Scenario: Check event of Second buttons
    When Click On IOS Button ["Second"]
    When Capture IOS Events
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element value ["event-element" "UISegmentedControl" 0]
    Then Check Element value ["event-description" "Second" 0]
    Then Check Element value ["page-name" "Controlers VC" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]

  Scenario: Check events of First button
    When Click On IOS Button ["Second"]
    When Capture IOS Events
    When Click On IOS Button ["First"]
    When Capture IOS Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["event-element" "UISegmentedControl" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element value ["page-name" "Controlers VC" 0]
    Then Check Element value ["event-description" "First" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]