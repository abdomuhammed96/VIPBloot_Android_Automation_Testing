Feature: check SMAPI UICustom

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["UICustom"]
    When Capture IOS Events
    When Click On IOS Button ["UICustom Button"]
    When Capture IOS Events

  Scenario: Check 1st UICustom Button event
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-description" "UICustom Button" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["event-element" "UIButton" 0]
    Then Check Element value ["page-name" "SampleApp.UICustomViewController" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]

  Scenario: Check 2nd UICustom Button event
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-session-id" 1]
    Then Check Element existed ["x-vf-trace-transaction-id" 1]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 1]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-description" "UICustom Button" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "UIButton" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["page-name" "SampleApp.UICustomViewController" 0]