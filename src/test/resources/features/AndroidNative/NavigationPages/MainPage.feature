Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check 1st Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["event-description" "Pressed on Database Events"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_events"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_events"]



  Scenario: Check 2nd Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]
    #    Then Check Element value ["event-description" "Pressed on Database Events" 1]


  Scenario: Check 3rd Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.EventFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    #    Then Check Element value ["event-description" "Pressed on Database Events" 2]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]



  Scenario: Check 1st Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    #    Then Check Element value ["event-description" "Pressed on Database Events" 0]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]



  Scenario: Check 2nd Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
   #    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]


  Scenario: Check 3rd Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "LogCustomComponentsActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
   #    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]

    Then Check Element value ["event-type" "Page" 3]
    Then Check Element value ["x-vf-app-state" "Foreground" 3]
#    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Check Element value ["event-element" "Load Time" 3]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 3]
    Then Check Element value ["subpage-name" "NA" 3]
    Then Check Element value ["x-vf-trace-tid" "NA" 3]
    Then Check Element value ["x-vf-user-id" "NA" 3]
    Then Check Element value ["x-vf-net-band" "NA" 3]