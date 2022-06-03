Feature: check Custom Event Feature
  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["Custom_Event"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Create Custom_Event" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["event-description" "Pressed on Create Custom Event"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_create_event"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_create_event"]



  Scenario: Check Page Event - Stay Time for Main activity
  - after clicking on "Create Custom Event" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Stay Time for First Fragment on Main activity
  - after clicking on "Create Custom Event" button on Main Page
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



  Scenario: Check Page Event - Load Time for Custom Event Page -
  after clicking on "Create Custom Event" button on Main Page
    Then Validate Android Element ["page-name" "CreateEventActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]



  Scenario: Check UIControl Event after clicking on "Save" btn on Custom Event page
    When Click On a Button On Custom Event Page ["Save"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "CreateEventActivity"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["event-description" "Pressed on Save"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]



  Scenario: Check UICustom Value after clicking on save button on Custom Event Page
    When Click On a Button On Custom Event Page ["Save"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "CreateEventActivity"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["event-description" "Custom Event Description"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UICustom" "Custom Event Element"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UICustom" "Custom Event Element"]



  Scenario: Check Page Event - Stay Time for Custom Event Page -
  after clicking on "Save" button on Custom Event Page
    When Click On a Button On Custom Event Page ["Save"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "CreateEventActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]

