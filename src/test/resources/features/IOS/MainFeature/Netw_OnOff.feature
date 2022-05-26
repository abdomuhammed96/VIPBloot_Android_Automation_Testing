Feature: check SMAPI Network Manager OFF/ON

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Settings"]
    When Capture IOS Events
    When Click On IOS Button ["Enable Network Manager, OFF, ON"]
    When Capture IOS Events

  Scenario: Check Network Manager Off event
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["page-name" "SampleApp.SettingsTableViewController" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["event-description" "Disabled" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "UISwitch" 0]

  Scenario: Check no Get events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Get"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Check Element value ["event-element" "UITableView" 0]

  Scenario: Check no Custom events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Custom"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Check Element value ["event-element" "UITableView" 0]

  Scenario: Check no Download events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Download"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Check Element value ["event-element" "UITableView" 0]

  Scenario: Check no Post events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Post"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Check Element value ["event-element" "UITableView" 0]

  Scenario: Check no Upload events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Upload"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [2]
    Then Check Element value ["event-element" "UITableView" 0]

    Then Check Element value ["event-element" "UITableView" 1]
  @TODO
#  "x-vf-trace-session-id" : "B21ED7A6-CBAF-4EFE-A87F-8B0FCC658A23",
#  "device-orientation" : "Portrait",
#  "event-description" : "{\n  \"error\" : \"Internal server Error\",\n  \"responseMessage\" : \"Internal server Error\",\n  \"responseTimeinMS\" : \"0\",\n  \"endPoint\" : \"https:\\\/\\\/jsonplaceholder.typicode.com\",\n  \"requestDate\" : \"Thu, 05-May-2022 12:14 PM GMT+2\",\n  \"responseCode\" : 500\n}",
#  "event-element" : "GET",
#  "x-vf-trace-tid" : "NA",
#  "x-vf-net-band" : "NA",
#  "event-type" : "Network",
#  "x-vf-trace-timestamp" : 1651745687,
#  "x-vf-user-id" : "NA",
#  "x-vf-net-type" : "WiFi",
#  "page-name" : "Session VC",
#  "x-vf-app-state" : "Foreground",
#  "subpage-name" : "NA",
#  "x-vf-trace-transaction-id" : "E96474BB-426C-4A74-931D-A072EE254786"