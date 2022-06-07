Feature: check SMAPI Network Manager OFF/ON

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["Settings"]
    When Capture IOS Events
    When Click On IOS Button ["Enable Network Manager, OFF, ON"]
    When Capture IOS Events

  Scenario: Check Network Manager Off event
    Then Validate IOS Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-user-id" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-net-band" "NA"] for event ["UIControl" "UISwitch"]
#    Then Validate IOS Element ["event-type" "UIControl"] for event ["Application" "NA"]
    Then Validate IOS Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["page-name" "SampleApp.SettingsTableViewController"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["subpage-name" "NA"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["event-description" "Disabled"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "UISwitch"]
    Then Validate IOS Element ["device-orientation" "Portrait"] for event ["UIControl" "UISwitch"]
#    Then Validate IOS Element ["event-element" "UISwitch"] for event ["Application" "NA"]

  Scenario: Check no Get events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Get"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]

  Scenario: Check no Custom events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Custom"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]

  Scenario: Check no Download events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Download"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]

  Scenario: Check no Post events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Post"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [1]
    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]

  Scenario: Check no Upload events after Network Manager Off
    When Click On IOS Button ["Back"]
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Upload"]
    When Capture IOS Events
#    Then Check No Captured Events
    Then Check Number of logged events [2]
    Then Validate IOS Element ["event-element" "UITableView"] for event ["UIControl" "UITableView"]

#    Then Validate IOS Element ["event-element" "UITableView"] for event ["Application" "NA"]
  @TODO
#  "x-vf-trace-session-id" : "B21ED7A6-CBAF-4EFE-A87F-8B0FCC658A23",
#  "device-orientation" : "Portrait",
#  "event-description" : "{\n  \"error\" : \"Internal server Error\",\n  \"responseMessage\" : \"Internal server Error\",\n  \"responseTimeinMS\" : \"0\",\n  \"endPoint\" : \"https:\\\/\\\/jsonplaceholder.typicode.com\",\n  \"requestDate\" : \"Thu, 05-May-2022 12:14 PM GMT+2\",\n  \"responseCode\" : 500\n}",
##  "event-element" : "GET",
#  "x-vf-trace-tid" : "NA",
#  "x-vf-net-band" : "NA",
##  "event-type" : "Network",
#  "x-vf-trace-timestamp" : 1651745687,
#  "x-vf-user-id" : "NA",
#  "x-vf-net-type" : "WiFi",
#  "page-name" : "Session VC",
#  "x-vf-app-state" : "Foreground",
#  "subpage-name" : "NA",
#  "x-vf-trace-transaction-id" : "E96474BB-426C-4A74-931D-A072EE254786"