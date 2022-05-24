Feature: check SMAPI Navigation

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Feedback"]
    When Capture IOS Events

  Scenario: Check 1st navigation event to Feedback
    Then Check Element value ["event-element" "UITableView" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["page-name" "Main Page VC" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-description" "Swiped on Position row : 7, sec: 7,  direction none" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]

  Scenario: Check 2nd navigation event to Feedback
    Then Check Element value ["event-element" "UITableView" 1]
    Then Check Element value ["event-type" "UIControl" 1]
    Then Check Element value ["page-name" "UINavigationController" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element existed ["event-description" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-net-type" "WiFi" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element existed ["x-vf-trace-timestamp" 1]
    Then Check Element existed ["x-vf-trace-session-id" 1]
    Then Check Element existed ["x-vf-trace-transaction-id" 1]

  Scenario: Check 3rd navigation event to Feedback
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["page-name" "SecLibFramework.WelcomeViewController" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element existed ["event-description" 2]
    Then Check Element value ["x-vf-app-state" "Foreground" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["x-vf-net-type" "WiFi" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element existed ["x-vf-trace-timestamp" 2]
    Then Check Element existed ["x-vf-trace-session-id" 2]
    Then Check Element existed ["x-vf-trace-transaction-id" 2]

  Scenario: Check 4th navigation event to Feedback
    Then Check Element value ["event-element" "Stay Time" 3]
    Then Check Element value ["event-type" "Page" 3]
    Then Check Element value ["page-name" "SecLibFramework.WelcomeViewController" 3]
    Then Check Element value ["subpage-name" "NA" 3]
    Then Check Element existed ["event-description" 3]
    Then Check Element value ["x-vf-app-state" "Foreground" 3]
    Then Check Element value ["device-orientation" "Portrait" 3]
    Then Check Element value ["x-vf-net-type" "WiFi" 3]
    Then Check Element value ["x-vf-user-id" "NA" 3]
    Then Check Element value ["x-vf-trace-tid" "NA" 3]
    Then Check Element value ["x-vf-net-band" "NA" 3]
    Then Check Element existed ["x-vf-trace-timestamp" 3]
    Then Check Element existed ["x-vf-trace-session-id" 3]
    Then Check Element existed ["x-vf-trace-transaction-id" 3]

  Scenario: Check 5th navigation event to Feedback
    Then Check Element value ["event-element" "Load Time" 4]
    Then Check Element value ["event-type" "Page" 4]
    Then Check Element value ["page-name" "UINavigationController" 4]
    Then Check Element value ["subpage-name" "NA" 4]
    Then Check Element existed ["event-description" 4]
    Then Check Element value ["x-vf-app-state" "Foreground" 4]
    Then Check Element value ["device-orientation" "Portrait" 4]
    Then Check Element value ["x-vf-net-type" "WiFi" 4]
    Then Check Element value ["x-vf-user-id" "NA" 4]
    Then Check Element value ["x-vf-trace-tid" "NA" 4]
    Then Check Element value ["x-vf-net-band" "NA" 4]
    Then Check Element existed ["x-vf-trace-timestamp" 4]
    Then Check Element existed ["x-vf-trace-session-id" 4]
    Then Check Element existed ["x-vf-trace-transaction-id" 4]

  Scenario: Check 1st back navigation event from Feedback
    When Click On IOS Button ["arrow.backward"]
    When Capture IOS Events
    Then Check Element value ["event-element" "UIBarButton" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["page-name" "SecLibFramework.FeedbackViewController" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]

  Scenario: Check 2nd back navigation event from Feedback
    When Click On IOS Button ["arrow.backward"]
    When Capture IOS Events
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["page-name" "UINavigationController" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element existed ["event-description" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-net-type" "WiFi" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element existed ["x-vf-trace-timestamp" 1]
    Then Check Element existed ["x-vf-trace-session-id" 1]
    Then Check Element existed ["x-vf-trace-transaction-id" 1]

  Scenario: Check 3rd back navigation event from Feedback
    When Click On IOS Button ["arrow.backward"]
    When Capture IOS Events
    Then Check Element value ["event-element" "Stay Time" 2]
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["page-name" "SecLibFramework.FeedbackViewController" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element existed ["event-description" 2]
    Then Check Element value ["x-vf-app-state" "Foreground" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["x-vf-net-type" "WiFi" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element existed ["x-vf-trace-timestamp" 2]
    Then Check Element existed ["x-vf-trace-session-id" 2]
    Then Check Element existed ["x-vf-trace-transaction-id" 2]
