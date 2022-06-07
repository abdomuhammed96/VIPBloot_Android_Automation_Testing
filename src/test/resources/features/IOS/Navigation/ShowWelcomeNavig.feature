Feature: check SMAPI Navigation

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Show Welcome Screen"]
    When Capture IOS Events

    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]

  Scenario: Check 1st navigation event to Show Welcome Screen
#    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["page-name" "Main Page VC"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["event-description" "Swiped on Position row : 8, sec: 8,  direction none"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]

  Scenario: Check 2nd navigation event to Show Welcome Screen
#    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["page-name" "Main Page VC"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["event-description" "Swiped on Position row : 8, sec: 8,  direction none"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]

  Scenario: Check 3rd navigation event to Show Welcome Screen
#    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["page-name" "Main Page VC"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UITableView"]

#  Scenario: Check 1st back navigation event from User ID
#    When Click on IOS button by class ["UIButton"]
#    When Click On IOS Button ["Back"]
#    When Capture IOS Events
#    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-trace-transaction-id"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["page-name" "SampleApp.UserIdViewController"] for event ["UIControl" "UITableView"]
##    Then Validate IOS Element ["event-element" "UIButton"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-trace-timestamp"] for event ["UIControl" "UITableView"]
##    Then Validate IOS Element ["event-type" "UIControl"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-trace-session-id"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UITableView"]
#    Then Validate IOS Element ["event-description" "Back"] for event ["UIControl" "UITableView"]
#
#  "x-vf-net-band" : "NA",
#  "event-description" : "NA",
#  "x-vf-trace-session-id" : "B4C63D9B-BCE0-4D76-95A6-D1B04D92B746",
#  "x-vf-trace-transaction-id" : "03CE6917-492F-4E4B-BFD2-16F87A24D5E6",
##  "event-type" : "UIControl",
#  "subpage-name" : "NA",
#  "x-vf-trace-timestamp" : 1651834798,
##  "event-element" : "UIButton",
#  "x-vf-trace-tid" : "NA",
#  "x-vf-net-type" : "WiFi",
#  "x-vf-app-state" : "Foreground",
#  "page-name" : "SecLibFramework.WelcomeViewController",
#  "x-vf-user-id" : "NA",
#  "device-orientation" : "Portrait"
#
#  "x-vf-trace-session-id" : "B4C63D9B-BCE0-4D76-95A6-D1B04D92B746",
#  "x-vf-app-state" : "Foreground",
#  "event-description" : "123.251 sec",
##  "event-element" : "Stay Time",
#  "x-vf-trace-transaction-id" : "4E752BA2-DB37-4496-9E43-3AC0112003D5",
#  "page-name" : "SecLibFramework.WelcomeViewController",
#  "x-vf-trace-timestamp" : 1651834798,
#  "x-vf-user-id" : "NA",
#  "x-vf-trace-tid" : "NA",
#  "device-orientation" : "Portrait",
#  "x-vf-net-band" : "NA",
##  "event-type" : "Page",
#  "subpage-name" : "NA",
#  "x-vf-net-type" : "WiFi"
