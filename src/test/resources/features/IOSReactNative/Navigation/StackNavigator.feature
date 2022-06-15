Feature: check SMAPI Stack Navigator

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["Stack Navigator"]
    When Capture IOS RN Event

  Scenario: Check Stack Navigator 1st Events
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "Load Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "NA"]
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

  Scenario: Check Stack Navigator 2nd Events
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

  Scenario: Check Stack Navigator 3rd Events
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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

  Scenario: Check Stack Navigator 4th Events
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Push Screen 2 from StackScreen1

  Scenario: Check Push Screen 2 from StackScreen1 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Load Time"]
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

  Scenario: Check Push Screen 2 from StackScreen1 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "Stay Time"]
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

  Scenario: Check Push Screen 2 from StackScreen1 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Navigate to Screen 3 from StackScreen1

  Scenario: Check Navigate to Screen 3 from StackScreen1 1st Events
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
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

  Scenario: Check Navigate to Screen 3 from StackScreen1 2nd Events
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "Stay Time"]
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

  Scenario: Check Navigate to Screen 3 from StackScreen1 3rd Events
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Jump to Main screen from StackScreen1

  Scenario: Check Jump to Main screen from StackScreen1 1st Events
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
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

  Scenario: Check Jump to Main screen from StackScreen1 1st Events
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "Stay Time"]
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

  Scenario: Check Jump to Main screen from StackScreen1 1st Events
    When Click On IOS RN Button ["Jump to Main screen"]
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

  Scenario: Check Jump to Main screen from StackScreen1 1st Events
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Navigate to Screen 3 from StackScreen2

  Scenario: Check Navigate to Screen 3 from StackScreen2 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
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

  Scenario: Check Navigate to Screen 3 from StackScreen2 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
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

  Scenario: Check Navigate to Screen 3 from StackScreen2 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Pop to previous screen from StackScreen2

  Scenario: Check Pop to previous screen from StackScreen2 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to previous screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
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

  Scenario: Check Pop to previous screen from StackScreen2 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to previous screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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

  Scenario: Check Pop to previous screen from StackScreen2 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to previous screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Replace screen 2 with screen 3 from StackScreen2

  Scenario: Check Replace screen 2 with screen 3 from StackScreen2 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Replace screen 2 with screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
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

  Scenario: Check Replace screen 2 with screen 3 from StackScreen2 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Replace screen 2 with screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
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

  Scenario: Check Replace screen 2 with screen 3 from StackScreen2 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Replace screen 2 with screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
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

  Scenario: Check Replace screen 2 with screen 3 from StackScreen2 4th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Replace screen 2 with screen 3"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Jump to Main screen from StackScreen2

  Scenario: Check Jump to Main screen from StackScreen2 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
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

  Scenario: Check Jump to Main screen from StackScreen2 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
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

  Scenario: Check Jump to Main screen from StackScreen2 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "NAStay Time"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]

  Scenario: Check Jump to Main screen from StackScreen2 4th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
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

  Scenario: Check Jump to Main screen from StackScreen2 5th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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

  Scenario: Check Jump to Main screen from StackScreen2 6th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Pop to Top from StackScreen3

  Scenario: Check Pop to Top from StackScreen3 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to Top"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

  Scenario: Check Pop to Top from StackScreen3 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to Top"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "Stay Time"]
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

  Scenario: Check Pop to Top from StackScreen3 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to Top"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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

  Scenario: Check Pop to Top from StackScreen3 4th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Pop to Top"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
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

#///////////////////////////////// validate back from StackScreen3

  Scenario: Check back from StackScreen3 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["StackScreen2, back"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "Stay Time"]
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

  Scenario: Check back from StackScreen3 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["StackScreen2, back"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
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

  Scenario: Check back from StackScreen3 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["StackScreen2, back"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
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

#///////////////////////////////// validate Jump to Main screen from StackScreen3

  Scenario: Check Jump to Main screen from StackScreen3 1st Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
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

  Scenario: Check Jump to Main screen from StackScreen3 2nd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
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

  Scenario: Check Jump to Main screen from StackScreen3 3rd Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
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

  Scenario: Check Jump to Main screen from StackScreen3 4th Events
    When Click On IOS RN Button ["Push Screen 2"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Navigate to Screen 3"]
    When Capture IOS RN Event
    When Click On IOS RN Button ["Jump to Main screen"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
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
