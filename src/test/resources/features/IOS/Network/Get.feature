Feature: check SMAPI URLSessiion

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Get"]
    When Capture IOS Events

  Scenario: Check 1st Get event in URL Session
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["page-name" "Session VC" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["event-description" "Pressed on Position row: 1, sec: 0" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["event-element" "UITableView" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]

  Scenario: Check 2nd Get event in URL Session
    Then Check Element existed ["x-vf-trace-transaction-id" 1]
    Then Check Element existed ["x-vf-trace-session-id" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element existed ["x-vf-trace-timestamp" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-net-type" "WiFi" 1]
    Then Check Element value ["page-name" "Session VC" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["event-description" "{\n  \"responseCode\" : 200,\n  \"requestDate\" : \"Tue, 12-Apr-2022 10:09 PM GMT+2\",\n  \"responseMessage\" : \"OK\",\n  \"responseContentType\" : \"application\\\/json; charset=utf-8\",\n  \"endPoint\" : \"https:\\\/\\\/jsonplaceholder.typicode.com\\\/users?MSISDN=010145454\",\n  \"responseTimeinMS\" : \"133\"\n}" 1]
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["subpage-name" "NA" 1]