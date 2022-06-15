Feature: check SMAPI UserID

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["userId"]
    When Capture IOS RN Event

#//////////////////////////////// Check UserID default value

  Scenario: Check UserID default value
    Then Validate IOS RN Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "NA"] for event ["Page" "NA"]

#//////////////////////////////// Check UserID when set by Test events

  Scenario: Check UserID when set by Test events
    Then Set UserID with["Test"]
    When Click On IOS RN Button ["Done"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "532eaabd9574880dbf76b9b8cc00832c20a6ec113d682299550d7a6e0f345e25"] for event ["Page" "NA"]

#//////////////////////////////// Check UserID when set by T e s t events

  Scenario: Check UserID when set by T e s t events
    Then Set UserID with["T e s t"]
    When Click On IOS RN Button ["Done"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["x-vf-user-id" "3f3c3508abadb8e66ee938d90ea17317f460f96022c20f6fb8b6d84dd032790f"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "3f3c3508abadb8e66ee938d90ea17317f460f96022c20f6fb8b6d84dd032790f"] for event ["Page" "NA"]

#//////////////////////////////// Navigate from Main Page to UserID

  Scenario: Check UserID 1st events
    Then Validate IOS RN Element ["page-name" "EditText"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]

  Scenario: Check UserID 2nd events
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]

  Scenario: Check UserID 3rd events
    Then Validate IOS RN Element ["page-name" "EditText"] for event ["Page" "NA"]
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

#//////////////////////////////// Navigate from UserID to Main Page

  Scenario: Check Navigate from UserID to Main Page 1st events
    When Click On IOS RN Button ["Cancel"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "EditText"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]

  Scenario: Check Navigate from UserID to Main Page 2nd events
    When Click On IOS RN Button ["Cancel"]
    When Capture IOS RN Event
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

  Scenario: Check Navigate from UserID to Main Page 3rd events
    When Click On IOS RN Button ["Cancel"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "EditText"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "NA"]