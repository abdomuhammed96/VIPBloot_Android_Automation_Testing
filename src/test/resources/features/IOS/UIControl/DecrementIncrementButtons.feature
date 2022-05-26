Feature: check SMAPI UIControl

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["UIControl"]
    When Capture IOS Events

  Scenario: Check No events of Selected button
    When Click On IOS Button ["Decrement"]
    Then Check No Captured Events
    When Click On IOS Button ["Increment"]
    When Capture IOS Events
    When Click On IOS Button ["Increment"]
    Then Check No Captured Events

  Scenario: Check event of Increment buttons
    When Click On IOS Button ["Increment"]
    When Capture IOS Events
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element value ["event-element" "UIStepper" 0]
    Then Check Element value ["event-description" "1.0" 0]
    Then Check Element value ["page-name" "Controlers VC" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]

  Scenario: Check events of Decrement button
    When Click On IOS Button ["Increment"]
    When Capture IOS Events
    When Click On IOS Button ["Decrement"]
    When Capture IOS Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["event-element" "UIStepper" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element value ["page-name" "Controlers VC" 0]
    Then Check Element value ["event-description" "0.0" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]