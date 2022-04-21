Feature: check SMAPI Crash Reporting

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Crash Reporting"]
    When Capture IOS Events
    When Click On IOS Button ["IOException"]
    When Capture IOS Events

  Scenario: Check 1st IO Exception event in Crash Reporting
    Then Check No Captured Events
