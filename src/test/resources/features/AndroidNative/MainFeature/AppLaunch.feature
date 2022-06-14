Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check App Launch Events
#    check event ["Application" "App launch time" "device-orientation" "Portrait"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "App launch time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Application" "App launch time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "App launch time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "App launch time"]



  Scenario: Check App Launched Event
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "NA"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Application" "NA"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["event-description" "App launched"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "NA"]


  #Scenario: Check Application enters foreground Event
    #"Application enters foreground" As the same as App launched
   # Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "NA"]
     #Then Validate Android Element ["device-orientation" "Portrait"] for event ["Application" "NA"]
    #Then Validate Android Element ["event-description" "Application enters foreground"] for event ["Application" "NA"]
    #Then Validate Android Element ["subpage-name" "NA"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "NA"]
    #Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "NA"]

  Scenario: Check Application enters foreground Event
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "NA"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Application" "NA"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Application" "NA"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "NA"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "NA"]



  Scenario: Check UIControl Events When clicking on "Start Timer button"
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]




  Scenario: Check UIControl Events When clicking on "Start Timer button"
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_start_timer"]




  Scenario: Check UIControl Events When clicking on "Stop Timer" button
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]




  Scenario: Check App launch timer Event When clicking on "Start Timer" button then clicking on "Start Timer" button
    When Click On Button ["Start_timer"]
    Then Capture Android Native Events
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events

    #Checking UI Control event
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_stop_timer"]


    #Checking Application event

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "App Launch"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Application" "App Launch"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Application" "App Launch"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "App Launch"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "App Launch"]





