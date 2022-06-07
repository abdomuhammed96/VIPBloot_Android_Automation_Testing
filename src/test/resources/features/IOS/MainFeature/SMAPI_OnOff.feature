Feature: check SMAPI config events

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Settings"]
    When Capture IOS Events
    When Click On IOS Button ["Enable SMAPI, OFF, ON"]
    When Capture IOS Events

  Scenario: Check SMAPI Off event
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UISwitch"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "NA"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["page-name" "SampleApp.SettingsTableViewController"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["event-description" "Disabled"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UISwitch"]
#    Then Validate IOS Element ["event-element" "UISwitch"] for event ["UIControl" "NA"]

  Scenario: Check no events logged while SMAPI Off after SMAPI On
    When Click On IOS Button ["Back"]
    When Click On IOS Button ["Settings"]
    When Click On IOS Button ["Enable SMAPI, OFF, ON"]
    When Capture IOS Events
    Then Check No Captured Events

  Scenario: Check no events after SMAPI Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    Then Check No Captured Events