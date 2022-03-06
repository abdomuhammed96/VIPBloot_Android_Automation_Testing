Feature: web demo

  Scenario: Check default User ID equal NA
    Given user open localHost:3000
    Then Click Change Storage Type
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "NA" 5]

  Scenario: Check User ID after setUserID by test
    Given user open localHost:3000
    Then Send JS "sec.setUserID(\"test\")"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 5]

  Scenario: Check User ID after setUserID by t e s t
    Given user open localHost:3000
    Then Send JS "sec.setUserID(\"t e s t\")"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 5]

  Scenario: Check User ID after setUserID by TEST
    Given user open localHost:3000
    Then Send JS "sec.setUserID(\"TEST\")"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "94ee059335e587e501cc4bf90613e0814f00a7b08bc7c648fd865a2af6a22cc2" 5]

  Scenario: Check Events when Verbose OFF
    Given user open localHost:3000
    Then Pause Time "3000" ms
    Then Send JS "sec.setVerbose(false)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Events when Verbose OFF then ON
    Given user open localHost:3000
    Then Pause Time "3000" ms
    Then Send JS "sec.setVerbose(false)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [5]
    Then Send JS "sec.setVerbose(true)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [7]
#    Then Compare Parameter ["device-orientation" "Landscape" 5]
#    Then Compare Parameter ["event-type" "UIControl" 5]
#    Then Compare Parameter ["event-element" "BUTTON - submit" 5]
#    Then Compare Parameter ["event-description" "Change Storage Type" 5]
#    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 5]
#    Then Compare Parameter ["x-vf-trace-locale" "en-US" 5]
#    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 5]
#    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 5]
#    Then Compare Parameter ["x-vf-trace-platform" "JS" 5]
#    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 5]
#    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 5]

#    Then Compare Parameter ["device-orientation" "Landscape" 6]
#    Then Compare Parameter ["event-type" "Page" 6]
#    Then Compare Parameter ["event-element" "soft-navigation (asd)" 6]
#    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 6]
#    Then Compare Parameter ["x-vf-trace-locale" "en-US" 6]
#    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 6]
#    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 6]
#    Then Compare Parameter ["x-vf-trace-platform" "JS" 6]
#    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 6]
#    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 6]

  Scenario: Check Events when SMAPI OFF
    Given user open localHost:3000
    Then Pause Time "3000" ms
    Then Send JS "sec.turnOnOff(false)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [5]

  Scenario: Check Events when SMAPI OFF then ON
    Given user open localHost:3000
    Then Pause Time "3000" ms
    Then Send JS "sec.turnOnOff(false)"
    Then Click Change Storage Type
    Then Capture Web Events
    Then Check WEB Events Count equal [5]
    Then Send JS "sec.turnOnOff(true)"
    Then Click Change Storage Type
    Then Pause Time "1000" ms
    Then Capture Web Events
    Then Check WEB Events Count equal [6]
#    Then Compare Parameter ["device-orientation" "Landscape" 5]
#    Then Compare Parameter ["event-type" "Page" 5]
#    Then Compare Parameter ["event-element" "soft-navigation (asd)" 5]
#    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 5]
#    Then Compare Parameter ["x-vf-trace-locale" "en-US" 5]
#    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 5]
#    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 5]
#    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 5]
#    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 5]