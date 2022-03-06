Feature: web demo

  Scenario: Check Star/Stop timer event description by test
    Then Send WEB JS "sec.startTimer(12, 'test')"
    Then Pause Time "1000" ms
    Then Send WEB JS "sec.stopTimer(12)"
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (test)" 4]

  Scenario: Check Star/Stop timer event description by TEST
    Then Send WEB JS "sec.startTimer(1, 'TEST')"
    Then Pause Time "1000" ms
    Then Send WEB JS "sec.stopTimer(1)"
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (TEST)" 4]

  Scenario: Check Star/Stop timer event description by t e s t
    Then Send WEB JS "sec.startTimer(123, 'T E S T')"
    Then Pause Time "1000" ms
    Then Send WEB JS "sec.stopTimer(123)"
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (t e s t)" 4]