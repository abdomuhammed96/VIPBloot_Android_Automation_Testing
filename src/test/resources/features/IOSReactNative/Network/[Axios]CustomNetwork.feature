Feature: check SMAPI Network

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["isNetworkTrackingOn"]
    When Capture IOS RN Event

  Scenario: Check Custom Network Logger events
    When Click On IOS RN Button ["[Axios] Custom Network Logger url: https://www.google.com method: GET Headers ☟  test-header : Lorem ipsum dolor  Accept : application/json  Content-Type : Test RN Network L... edit"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Network" "GET"]