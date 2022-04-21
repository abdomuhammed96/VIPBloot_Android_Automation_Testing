Feature: check SMAPI Crash Reporting

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Crash Reporting"]
    When Capture IOS Events
    When Click On IOS Button ["Index out of range"]
    When Capture IOS Events

  Scenario: Check 1st Index out of range event in Crash Reporting
    Then Check No Captured Events
