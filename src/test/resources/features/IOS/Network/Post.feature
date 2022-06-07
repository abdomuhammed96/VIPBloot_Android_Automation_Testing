Feature: check SMAPI URLSessiion

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Post"]
    When Capture IOS Events

  Scenario: Check 1st Post event in URL Session
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["event-description" "Pressed on Position row: 0, sec: 0"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["page-name" "Session VC"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]

  Scenario: Check 2nd Post event in URL Session
    Then Validate IOS Element ["event-description" "201"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UIButton"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["page-name" "Session VC"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
