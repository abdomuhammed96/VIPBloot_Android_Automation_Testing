Feature: check LogComponent Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["Log_Custom_Components"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Log Component" button on Main Page

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["event-description" "Pressed on Log Custom Components"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_components"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_components"]
    Then Click Back Button

  Scenario: Check Page Event - Stay Time for Main Activity - after clicking on "Log Component" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Stay Time for First Fragment on Main activity
  - after clicking on "Log Component" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Load Time for Log Component Page - after clicking on "Log Component" button on Main Page

    Then Validate Android Element ["page-name" "LogCustomComponentsActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]



  Scenario: Check UIControl Event after clicking on "ADD" btn on log component page
    When Click On a Button On Log Component Page ["Add"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "LogCustomComponentsActivity"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["event-description" "Pressed on Add"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_add"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_add"]



  Scenario: Check UIControl Event after clicking on "Save" btn on log component page
    When Click On a Button On Log Component Page ["Save"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "LogCustomComponentsActivity"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["event-description" "Pressed on Save"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_save"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_save"]



  Scenario: Check UICustom Event after clicking on "ADD" button then "Save" button
  on log component page
    When Click On a Button On Log Component Page ["Add"]
    When Click On a Button On Log Component Page ["Save"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "LogCustomComponentsActivity"] for event ["UICustom" "Component"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UICustom" "Component"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UICustom" "Component"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UICustom" "Component"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UICustom" "Component"]

#    Then Check Element value ["event-description" "Pressed on Add" 1]
