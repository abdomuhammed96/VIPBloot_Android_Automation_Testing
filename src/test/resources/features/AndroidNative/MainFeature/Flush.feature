Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check Flush After 15 Event
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    Then Capture Android Native Events
    Then Check No Events Captured

  Scenario: Check Flush After 30 Seconds
    When Click On Button ["Start_timer"]
    When Click On Button ["Stop_timer"]
    Then Pause Time "30000" ms
    Then Capture Android Native Events
    Then Check No Events Captured
