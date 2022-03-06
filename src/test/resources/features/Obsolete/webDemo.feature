Feature: web demo

  Scenario: User open browser
    Then Send JS "sec.setUserID(\"test\")"
    Then Click on ["Change Storage Type"]
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 5]