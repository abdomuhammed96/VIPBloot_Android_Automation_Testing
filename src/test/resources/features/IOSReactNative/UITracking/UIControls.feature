Feature: check SMAPI UI Controls

  Background: User Opens App and Capture Events
    When Capture IOS RN Event
    When Click On IOS RN Button ["UI Controls"]
    When Capture IOS RN Event

  Scenario: Check UI Controls 1st events
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

  Scenario: Check UI Controls 2nd events
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

  Scenario: Check UI Controls 3rd events
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

#//////////////////////////////// press button from UI Controls

  Scenario: Check press button from UI Controls events
    When Click On IOS RN Button ["Press me"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["event-description" "onPress"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "Button - sampleButtonId"]

#//////////////////////////////// press switch from UI Controls

  Scenario: Check switch from UI Controls events
    When Click On IOS RN Button ["Press me"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["event-description" "onValueChange"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "Switch - sampleSwitchId"]

#//////////////////////////////// press Touchable Opacity from UI Controls

  Scenario: Check Touchable Opacity from UI Controls events
    When Click On IOS RN Button ["TouchableOpacity"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "UITracking"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["event-description" "onPress"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "Touchable - sampleTouchableId"]

#//////////////////////////////// Navigate from UI Controls to Main Page

  Scenario: Check Navigate from UI Controls to Main Page 1st events
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

  Scenario: Check Navigate from UI Controls to Main Page 2nd events
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

  Scenario: Check Navigate from UI Controls to Main Page 3rd events
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