Feature: check SMAPI Crash Reporting

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Crash Reporting"]
    When Capture IOS Events
    When Click On IOS Button ["NullPointerException"]
    When Capture IOS Events

  Scenario: Check 1st Null Pointer Exception event in Crash Reporting
    Then Check No Captured Events
