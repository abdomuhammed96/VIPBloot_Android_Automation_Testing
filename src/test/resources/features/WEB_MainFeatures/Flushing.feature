Feature: web demo

  Scenario: Check Flushing Event
    Given user open localHost:3000
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [10]
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [1]

  Scenario: Check Flushing Events when Verbose OFF
    Given user open localHost:3000
    Then Send JS "sec.setVerbose(false)"
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [2]

  Scenario: Check Flushing Events when Verbose OFF then ON
    Given user open localHost:3000
    Then Pause Time "1000" ms
    Then Send JS "sec.setVerbose(false)"
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Send JS "sec.setVerbose(true)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [1]
#

  Scenario: Check Flushing Events when SMAPI OFF
    Given user open localHost:3000
    Then Send JS "sec.turnOnOff(false)"
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [2]

  Scenario: Check Flushing Events when SMAPI OFF then ON
    Given user open localHost:3000
    Then Pause Time "1000" ms
    Then Send JS "sec.turnOnOff(false)"
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Send JS "sec.turnOnOff(true)"
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [10]
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [1]