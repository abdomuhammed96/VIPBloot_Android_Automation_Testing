Feature: check SMAPI Crash Reporting

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Crash Reporting"]
    When Capture IOS Events
    When Click On IOS Button ["ArithmeticException"]
    When Capture IOS Events

  Scenario: Check 1st ArithmeticException event in Crash Reporting
    Then Check No Captured Events
