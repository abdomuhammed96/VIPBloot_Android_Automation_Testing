Feature: check AppLaunch event
# data table
#  Scenario Outline: Check App Launch Events
  Scenario: Check App Launch Events
    Given User opens App
#    Then Capture And Compare Events
    Then Capture And Compare Parameter ["event-type" "Application" 0]
#    Then event field should be <expectedResult>
#    Examples:
#      | expectedResult    |
#      | "expected result" |