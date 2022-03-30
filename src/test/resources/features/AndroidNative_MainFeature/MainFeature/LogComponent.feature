Feature: check LogComponent Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["Log_Custom_Components"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:button_components" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Log Custom Components" 0]
    Then Click Back Button

  Scenario: Check Page Event - Stay Time for Main Activity - after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Stay Time for First Fragment on Main activity
  - after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Stay Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 2]


  Scenario: Check Page Event - Load Time for Log Component Page - after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "Page" 3]
    Then Check Element value ["device-orientation" "Portrait" 3]
    Then Check Element value ["event-element" "Load Time" 3]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 3]
    Then Check Element value is not null ["x-vf-trace-timestamp" 3]
    Then Check Element value is not null ["x-vf-trace-session-id" 3]
    Then Check Element value is not null ["event-description" 3]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 3]
    Then Check Element value ["subpage-name" "NA" 3]
    Then Check Element value ["x-vf-trace-tid" "NA" 3]
    Then Check Element value ["x-vf-user-id" "NA" 3]
    Then Check Element value ["x-vf-net-band" "NA" 3]


  Scenario: Check UIControl Event after clicking on "ADD" btn on log component page
    When Click On a Button On Log Component Page ["Add"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_add" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Add" 0]

  Scenario: Check UIControl Event after clicking on "Save" btn on log component page
    When Click On a Button On Log Component Page ["Save"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-description" "Pressed on Save" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_save" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check UICustom Event after clicking on "ADD" button then "Save" button
  on log component page
    When Click On a Button On Log Component Page ["Add"]
    When Click On a Button On Log Component Page ["Save"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UICustom" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "MaterialButton:btn_add" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value ["event-description" "Pressed on Add" 1]
