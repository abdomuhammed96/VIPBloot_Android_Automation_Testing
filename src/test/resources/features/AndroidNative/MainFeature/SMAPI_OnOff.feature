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
    #Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["event-description" "Unchecked on SMAPI On/Off"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_SMAPIOn"]


