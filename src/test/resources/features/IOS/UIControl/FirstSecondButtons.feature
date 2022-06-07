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
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]
#    Then Validate IOS Element ["event-element" "UISegmentedControl"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["event-description" "Second"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["page-name" "Controlers VC"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UISegmentedControl"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UISegmentedControl"]

  Scenario: Check events of First button
    When Click On IOS Button ["Second"]
    When Capture IOS Events
    When Click On IOS Button ["First"]
    When Capture IOS Events
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UIStepper"]
#    Then Validate IOS Element ["event-element" "UISegmentedControl"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["page-name" "Controlers VC"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["event-description" "First"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UISegmentedControl"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UISegmentedControl"]