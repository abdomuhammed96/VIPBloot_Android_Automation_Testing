Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check App Launch Events
    Then Check Element value ["event-type" "Application" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "App launch time" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check App Launched Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-description" "App launched" 1]
    Then Check Element value ["event-element" "NA" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Application enters foreground Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-description" "Application enters foreground" 1]
    Then Check Element value ["event-element" "NA" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-element" "Load Time" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Subpage Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-element" "Load Time" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]