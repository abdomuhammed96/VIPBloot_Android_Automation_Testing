Feature: UI Events Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
  

  Scenario: Check UIControl Event after clicking on "Report Bug Checkbox" button on Main Page
    When Click On Button ["BugReport_On_Off"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
   #Then Validate Android Element ["event-description" "Pressed on UI Events"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialCheckBox:cb_BugReportOn"]
  
  Scenario: Check UIControl Event after clicking on "Report Bug" button on Main Page when BugReport is ON &
    Welcome Message is off
    When Click On Button ["Welcome_Msg_checkBox"]
    When Capture Android Native Events
    When Click On Button ["BugReport_On_Off"]
    When Capture Android Native Events
    When Click On Button ["BugReport"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_bug_report"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_bug_report"]


  Scenario: Check Page Event - Stay Time for First Fragment on Main activity- after clicking on "UIEvents"
  button on Main Page when BugReport is ON & Welcome Message is off
    When Click On Button ["Welcome_Msg_checkBox"]
    When Capture Android Native Events
    When Click On Button ["BugReport_On_Off"]
    When Capture Android Native Events
    When Click On Button ["BugReport"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]
  
  Scenario: Check Page Event - Stay Time for Main activity- after clicking on "UIEvents"
  button on Main Page when BugReport is ON & Welcome Message is off
    When Click On Button ["Welcome_Msg_checkBox"]
    When Capture Android Native Events
    When Click On Button ["BugReport_On_Off"]
    When Capture Android Native Events
    When Click On Button ["BugReport"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]

  Scenario: Check Page Event - Load Time for UIEvents Fragment on Main activity
  - after clicking on "Bug Report" button on Main Page when BugReport is ON & Welcome Message is off
    When Click On Button ["Welcome_Msg_checkBox"]
    When Capture Android Native Events
    When Click On Button ["BugReport_On_Off"]
    When Capture Android Native Events
    When Click On Button ["BugReport"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "com.vodafone.lib.seclibng.managers.bug_report.BugReportActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]
    When Write a description ["Testing for me"]
    When Click On a Button On Customer Channel Page ["submitReport"]
  



############################################  ################################################