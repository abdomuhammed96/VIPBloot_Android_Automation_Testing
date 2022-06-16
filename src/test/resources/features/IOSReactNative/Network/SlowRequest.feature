Feature: check SMAPI Network

  Background: User Opens App and Capture Events
    When Capture IOS RN Event

  Scenario: Check Slow request delay 10 secs url events Netw Off
    When Click On IOS RN Button ["Slow request delay 10 secs url: http://slowwly.robertomurray.co.uk... method: GET Headers ☟  my-sample-header : Lorem ipsum dolor...  Accept : application/json  Content-Type : application/json edit"]
    When Capture IOS RN Event
    Then Check [0] Events Captured

  Scenario: Check Slow request delay 10 secs url events
    When Click On IOS RN Button ["isNetworkTrackingOn"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Slow request delay 10 secs url: http://slowwly.robertomurray.co.uk... method: GET Headers ☟  my-sample-header : Lorem ipsum dolor...  Accept : application/json  Content-Type : application/json edit"]
    When Capture IOS RN Event
    Then Check [1] Events Captured
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