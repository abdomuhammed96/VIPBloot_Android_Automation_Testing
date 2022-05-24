Feature: check SMAPI UserID

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["User ID"]
    When Capture IOS Events

  Scenario: Check UserID default value is NA
    Then Check Element value ["x-vf-user-id" "NA" 0]

  Scenario: Check UserID after setting with test
    Then Set "test" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
    Then Check Element value ["x-vf-user-id" "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" 1]

  Scenario: Check UserID after setting with t e s t
    Then Set "t e s t" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
    Then Check Element value ["x-vf-user-id" "55aa4ece49c5d0bbcdbb006eb9fdd3d6eb59b0e9f2a1bc02a14d2bbbcdbf1e60" 1]

  Scenario: Check UserID after setting with TEST
    Then Set "TEST" to UITextField
    Then Click On IOS Button ["Submit"]
    Then Click On IOS Button ["Back"]
    When Capture IOS Events
    Then Check Element value ["x-vf-user-id" "94ee059335e587e501cc4bf90613e0814f00a7b08bc7c648fd865a2af6a22cc2" 1]