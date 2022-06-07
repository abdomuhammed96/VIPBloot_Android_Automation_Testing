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
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]
#    Then Validate IOS Element ["event-element" "UIStepper"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["event-description" "1.0"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["page-name" "Controlers VC"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UIStepper"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UIStepper"]

  Scenario: Check events of Decrement button
    When Click On IOS Button ["Increment"]
    When Capture IOS Events
    When Click On IOS Button ["Decrement"]
    When Capture IOS Events
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-element" "UIStepper"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["page-name" "Controlers VC"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["event-description" "0.0"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UIStepper"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UIStepper"]