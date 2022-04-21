Feature: check SMAPI Trace Key

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Trace Key"]
    When Capture IOS Events

  Scenario: Check Trace Key default value is NA
#    Then Check Element value ["" "NA" 0]

  Scenario: Check Trace Key after setting with test
    Then Set "test" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
#    Then Check Element value ["" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 0]

  Scenario: Check Trace Key after setting with t e s t
    Then Set "t e s t" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
#    Then Check Element value ["" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 0]

  Scenario: Check Trace Key after setting with TEST
    Then Set "TEST" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
#    Then Check Element value ["" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 0]