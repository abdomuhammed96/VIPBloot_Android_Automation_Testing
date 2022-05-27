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
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Unchecked on SMAPI On/Off" 0]
    Then Check Element value ["event-element" "a:cb_SMAPIOn" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
