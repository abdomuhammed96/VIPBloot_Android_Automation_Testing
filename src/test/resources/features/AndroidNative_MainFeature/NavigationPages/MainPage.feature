Feature: check AppLaunch event

  Background: User Opens App and Capture Events
    When Capture Android Native Events

  Scenario: Check 1st Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["event-description" "Pressed on Database Events" 0]
    Then Check Element value ["event-element" "MaterialButton:button_events" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check 2nd Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
#    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check 3rd Event When Click on Database Events
    When Click On Button ["Database_Events"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["x-vf-app-state" "Foreground" 2]
#    Then Check Element value ["event-description" "Pressed on Database Events" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.EventFragment" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]

  Scenario: Check 1st Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "Page" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
#    Then Check Element value ["event-description" "Pressed on Database Events" 0]
    Then Check Element value ["event-element" "Stay Time" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check 2nd Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
#    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check 3rd Event When Click on Log Custom Components
    When Click On Button ["Log_Custom_Components"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
#    Then Check Element value ["event-description" "Pressed on Database Events" 1]
    Then Check Element value ["event-element" "Load Time" 1]
    Then Check Element value ["page-name" "LogCustomComponentsActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]