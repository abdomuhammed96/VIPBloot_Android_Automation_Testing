Feature: check SMAPI

  Background: User Opens App and Capture Events
    When Capture IOS RN Event

  Scenario: Check SMAPI ON OFF
    When Click On IOS RN Button ["isSmapiOn"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["event-description" "Disabled"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]

  Scenario: Check SMAPI ON OFF
    When Click On IOS RN Button ["isSmapiOn"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Start Timer with ID: 12345678 with element name: timerTestElement"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["StopTimer with ID: 12345678"]
    When Capture IOS RN Event
    Then Check [0] Events Captured

  Scenario: Check SMAPI ON OFF
    When Click On IOS RN Button ["isSmapiOn"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Start Timer with ID: 12345678 with element name: timerTestElement"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["isSmapiOn"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["StopTimer with ID: 12345678"]
    When Capture IOS RN Event
    Then Check [0] Events Captured