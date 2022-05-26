Feature: check SMAPI Navigation

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Show Welcome Screen"]
    When Capture IOS Events

  Scenario: Check 1st navigation event to Show Welcome Screen
    Then Check Element value ["event-element" "UITableView" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["page-name" "Main Page VC" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-description" "Swiped on Position row : 8, sec: 8,  direction none" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]

  Scenario: Check 2nd navigation event to Show Welcome Screen
    Then Check Element value ["event-element" "UITableView" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["page-name" "Main Page VC" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-description" "Swiped on Position row : 8, sec: 8,  direction none" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]

  Scenario: Check 3rd navigation event to Show Welcome Screen
    Then Check Element value ["event-element" "UITableView" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["page-name" "Main Page VC" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element existed ["event-description" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]

#  Scenario: Check 1st back navigation event from User ID
#    When Click on IOS button by class ["UIButton"]
#    When Click On IOS Button ["Back"]
#    When Capture IOS Events
#    Then Check Element value ["x-vf-net-type" "WiFi" 0]
#    Then Check Element value ["device-orientation" "Portrait" 0]
#    Then Check Element existed ["x-vf-trace-transaction-id" 0]
#    Then Check Element value ["x-vf-net-band" "NA" 0]
#    Then Check Element value ["x-vf-trace-tid" "NA" 0]
#    Then Check Element value ["page-name" "SampleApp.UserIdViewController" 0]
#    Then Check Element value ["event-element" "UIButton" 0]
#    Then Check Element existed ["x-vf-trace-timestamp" 0]
#    Then Check Element value ["event-type" "UIControl" 0]
#    Then Check Element value ["x-vf-app-state" "Foreground" 0]
#    Then Check Element existed ["x-vf-trace-session-id" 0]
#    Then Check Element value ["x-vf-user-id" "NA" 0]
#    Then Check Element value ["subpage-name" "NA" 0]
#    Then Check Element value ["event-description" "Back" 0]
#
#  "x-vf-net-band" : "NA",
#  "event-description" : "NA",
#  "x-vf-trace-session-id" : "B4C63D9B-BCE0-4D76-95A6-D1B04D92B746",
#  "x-vf-trace-transaction-id" : "03CE6917-492F-4E4B-BFD2-16F87A24D5E6",
#  "event-type" : "UIControl",
#  "subpage-name" : "NA",
#  "x-vf-trace-timestamp" : 1651834798,
#  "event-element" : "UIButton",
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
#  "event-element" : "Stay Time",
#  "x-vf-trace-transaction-id" : "4E752BA2-DB37-4496-9E43-3AC0112003D5",
#  "page-name" : "SecLibFramework.WelcomeViewController",
#  "x-vf-trace-timestamp" : 1651834798,
#  "x-vf-user-id" : "NA",
#  "x-vf-trace-tid" : "NA",
#  "device-orientation" : "Portrait",
#  "x-vf-net-band" : "NA",
#  "event-type" : "Page",
#  "subpage-name" : "NA",
#  "x-vf-net-type" : "WiFi"
