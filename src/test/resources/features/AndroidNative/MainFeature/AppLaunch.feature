Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check App Launch Events
#    check event ["Application" "App launch time" "device-orientation" "Portrait"]
    Then Check Element value ["event-type" "Application" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["c" "App launch time" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check App Launched Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
#    Then Check Element value ["event-description" "App launched" 1]
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
    Then Check Element value ["event-description" "App launched" 1]
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
    Then Check Element value ["event-element" "App launch time" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Subpage Event
    Then Check Element value ["event-type" "Application" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-element" "NA" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check UIControl Events When clicking on "Start Timer button"
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Pressed on Start Timer" 0]
    Then Check Element value ["event-element" "MaterialButton:button_start_timer" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]

  Scenario: Check UIControl Events When clicking on "Start Timer button"
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Pressed on Start Timer" 0]
    Then Check Element value ["event-element" "MaterialButton:button_start_timer" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]

  Scenario: Check UIControl Events When clicking on "Start Timer" button
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Pressed on Start Timer" 0]
    Then Check Element value ["event-element" "MaterialButton:button_start_timer" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]

  Scenario: Check UIControl Events When clicking on "Stop Timer" button
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Pressed on Stop Timer" 0]
    Then Check Element value ["event-element" "MaterialButton:button_stop_timer" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]

  Scenario: Check App launch timer Event When clicking on "Start Timer" button then clicking on "Start Timer" button
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events

    #Checking UI Control event
    Then Check Element value ["event-type" "UIControl" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-description" "Pressed on Stop Timer" 1]
    Then Check Element value ["event-element" "MaterialButton:button_stop_timer" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    #Checking Application event
    Then Check Element value ["event-type" "Application" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-element" "App Launch" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value is not null ["event-description" 0]




