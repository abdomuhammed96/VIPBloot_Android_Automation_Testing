Feature: check SMAPI Execptions

  Background: User Opens App and Capture Events
    When Capture IOS RN Event

  Scenario: Check undefined Access property of an undefined import events
    When Click On IOS RN Button ["Cannot read property of undefined Access property of an undefined import"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["event-description" "ReferenceError: Can't find variable: myImportedObject"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]

  Scenario: Check undefined Exception Access property of an undefined import events
    When Click On IOS RN Button ["Cannot read property of undefined Exception Access property of an undefined import"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["event-description" "ReferenceError: Can't find variable: myImportedObject"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]

  Scenario: Check Not defined Access property of an undefined local data field events
    When Click On IOS RN Button ["Not defined Access property of an undefined local data field"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["event-description" "ReferenceError: Can't find variable: localnotcreated"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Crash" "ReferenceError"]

  Scenario: Check null Read property of null events
    When Click On IOS RN Button ["Cannot read property of null Read property of null"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["event-description" "TypeError: null is not an object (evaluating 'nullField.myProp')"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Crash" "TypeError"]

  Scenario: Check Cannot set property of null Set property of null events
    When Click On IOS RN Button ["Cannot set property of null Set property of null"]
    When Capture IOS RN Event
    Then Validate IOS RN Element ["page-name" "Main"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["subpage-name" "NA"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["event-description" "TypeError: null is not an object (evaluating 'nullField.myProp = 1')"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["device-orientation" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-user-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-tid" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-app-state" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-net-type" "SMAPI_Presence"] for event ["Crash" "TypeError"]
    Then Validate IOS RN Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Crash" "TypeError"]

  Scenario: Check Divide by zero crash events
    When Click On IOS RN Button ["[NATIVE] Divide by zero crash Invoke native method to divide by zero"]
    When Capture IOS RN Event
    Then Check [0] Events Captured