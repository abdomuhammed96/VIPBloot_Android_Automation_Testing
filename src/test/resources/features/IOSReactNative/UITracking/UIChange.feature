Feature: check SMAPI UI Change

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["UI Change (react-native-tab-view)"]
    When Capture IOS RN Event

  Scenario: Check UI Change 1st events
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

  Scenario: Check UI Change 2nd events
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

  Scenario: Check UI Change 3rd events
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

#//////////////////////////////// Navigate from First Page tracking to Second Page

  Scenario: Check Navigate from First Page tracking to Second Page event
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["event-description" "Selected Page Second"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIChange" "TabView"]

#//////////////////////////////// Navigate from Second Page tracking to Third Page

  Scenario: Check Navigate from Second Page tracking to Third Page event
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Third"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["event-description" "Selected Page Third"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIChange" "TabView"]

#//////////////////////////////// Navigate from Third Page tracking to First Page

  Scenario: Check Navigate from Third Page tracking to First Page event
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Third"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["First"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["event-description" "Selected Page First"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIChange" "TabView"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIChange" "TabView"]

#//////////////////////////////// Navigate from First Page tracking to Main Page

  Scenario: Check Navigate from First Page tracking to Main Page 1st events
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Third"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["First"]
    When Capture IOS RN Event
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

  Scenario: Check Navigate from First Page tracking to Main Page 2nd events
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Third"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["First"]
    When Capture IOS RN Event
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

  Scenario: Check Navigate from First Page tracking to Main Page 3rd events
    When Click On IOS RN Button ["Second"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Third"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["First"]
    When Capture IOS RN Event
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