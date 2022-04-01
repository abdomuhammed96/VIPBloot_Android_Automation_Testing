Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check No Events When SMAPI Off
    When Click On Button ["SMAPI_ON_OFF"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events
    Then Check No Events Captured

  Scenario: Check No Old Events When SMAPI Off then On
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["SMAPI_ON_OFF"]
    Then Capture Android Native Events
    Then Check No Events Captured

  Scenario: Check No Old/New Events When SMAPI Off then On
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["SMAPI_ON_OFF"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events
    Then Check No Events Captured

  Scenario: Check Events When SMAPI Off then On
    When Click On Button ["SMAPI_ON_OFF"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["SMAPI_ON_OFF"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-description" "Pressed on Start Timer" 1]
    Then Check Element value ["event-element" "MaterialButton:button_start_timer" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
