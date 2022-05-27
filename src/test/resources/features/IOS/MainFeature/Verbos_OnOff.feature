Feature: check SMAPI Verbos On/Off

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Settings"]
    When Capture IOS Events
    When Click On IOS Button ["Enable Verbos, OFF, ON"]
    When Capture IOS Events

#  Scenario: Check Verbos Off event
#    Then Check Element value ["x-vf-trace-tid" "NA" 0]
#    Then Check Element value ["x-vf-user-id" "NA" 0]
#    Then Check Element existed ["x-vf-trace-transaction-id" 0]
#    Then Check Element value ["x-vf-net-band" "NA" 0]
#    Then Check Element value ["event-type" "UIControl" 0]
#    Then Check Element existed ["x-vf-trace-timestamp" 0]
#    Then Check Element value ["x-vf-app-state" "Foreground" 0]
#    Then Check Element value ["page-name" "SampleApp.SettingsTableViewController" 0]
#    Then Check Element value ["subpage-name" "NA" 0]
#    Then Check Element value ["x-vf-net-type" "WiFi" 0]
#    Then Check Element value ["event-description" "Disabled" 0]
#    Then Check Element existed ["x-vf-trace-session-id" 0]
#    Then Check Element value ["device-orientation" "Portrait" 0]
#    Then Check Element value ["event-element" "UISwitch" 0]

  Scenario: Check events logged while Verbos Off after Verbos On
    When Click On IOS Button ["Back"]
    When Click On IOS Button ["Settings"]
    When Click On IOS Button ["Enable Verbos, OFF, ON"]
    When Capture IOS Events
    Then Check Number of logged events [1]

  Scenario: Check no events after Verbos Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    Then Check No Captured Events