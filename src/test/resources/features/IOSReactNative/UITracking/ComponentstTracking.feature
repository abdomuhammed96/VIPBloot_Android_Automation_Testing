Feature: check SMAPI Components tracking

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["Components tracking"]
    When Capture IOS RN Event

  Scenario: Check Components tracking 1st events
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "Load Time"]
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

  Scenario: Check Components tracking 2nd events
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

  Scenario: Check Components tracking 3rd events
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
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

  Scenario: Check Components tracking 4th events
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["subpage-name" "ClassComp"] for event ["Page" "NA"]
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

  Scenario: Check Components tracking 5th events
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate IOS RN Element ["subpage-name" "FunctionalComp"] for event ["Page" "NA"]
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

#//////////////////////////////// Navigate from Components tracking to Main

  Scenario: Check Components tracking 1st events
    When Click On IOS RN Button ["Main, back"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "Stay Time"]
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

  Scenario: Check Components tracking 2nd events
    When Click On IOS RN Button ["Main, back"]
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

  Scenario: Check Components tracking 3rd events
    When Click On IOS RN Button ["Main, back"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
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