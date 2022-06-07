Feature: check SMAPI UICustom

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["UICustom"]
    When Capture IOS Events
    When Click On IOS Button ["UICustom Button"]
    When Capture IOS Events

  Scenario: Check 1st UICustom Button event
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UIButton"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["event-description" "UICustom Button"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UIButton"]
#    Then Validate IOS Element ["event-element" "UIButton"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["page-name" "SampleApp.UICustomViewController"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UIButton"]

  Scenario: Check 2nd UICustom Button event
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["event-description" "UICustom Button"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UICustom"]
#    Then Validate IOS Element ["event-type" "UICustom"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UICustom"]
#    Then Validate IOS Element ["event-element" "UICustom"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UICustom"]
    Then Validate IOS Element ["page-name" "SampleApp.UICustomViewController"] for event ["UIControl" "UICustom"]