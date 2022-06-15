Feature: check SMAPI

  Background: User Opens App and Capture Events
    When Capture IOS RN Event

  Scenario: Check Application default 1st event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Application" "AppLaunch"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Application" "AppLaunch"]

  Scenario: Check Application default 2nd event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Application" "App launched"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Application" "App launched"]

  Scenario: Check Application default 3rd event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Application" "Load Time"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Application" "Load Time"]

  Scenario: Check Application default 4th event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "NA"]