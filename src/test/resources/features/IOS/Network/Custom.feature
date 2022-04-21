Feature: check SMAPI URLSessiion

  Background: User Opens App and Capture Events
    When Capture IOS Events
    When Click On IOS Button ["URLSession"]
    When Capture IOS Events
    When Click On IOS Button ["Custom"]
    When Capture IOS Events

  Scenario: Check 1st Custom event in URL Session
    Then Check Element value ["x-vf-net-type" "WiFi" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["page-name" "Session VC" 0]
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element existed ["x-vf-trace-session-id" 0]
    Then Check Element value ["x-vf-app-state" "Foreground" 0]
    Then Check Element existed ["x-vf-trace-timestamp" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element existed ["x-vf-trace-transaction-id" 0]
    Then Check Element value ["event-description" "Pressed on Position row: 4, sec: 0" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["event-element" "UITableView" 0]

  Scenario: Check 2nd Custom event in URL Session
    Then Check Element existed ["x-vf-trace-session-id" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["event-description" "{\n  \"responseContentType\" : \"application\\\/json; charset=utf-8\",\n  \"responseCode\" : 201,\n  \"responseMessage\" : \"Created\",\n  \"requestDate\" : \"Tue, 12-Apr-2022 10:12 PM GMT+2\",\n  \"responseTimeinMS\" : \"343\",\n  \"endPoint\" : \"https:\\\/\\\/jsonplaceholder.typicode.com\\\/posts\"\n}" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-type" "WiFi" 1]
    Then Check Element value ["page-name" "Session VC" 1]
    Then Check Element existed ["x-vf-trace-transaction-id" 1]
    Then Check Element existed ["x-vf-trace-timestamp" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-app-state" "Foreground" 1]
    Then Check Element value ["event-element" "POST" 1]
    Then Check Element value ["event-type" "Network" 1]

  Scenario: Check 3rd Custom event in URL Session
    Then Check Element value ["event-type" "Network" 2]
    Then Check Element value ["event-description" "{\n  \"endPoint\" : \"https:\\\/\\\/jsonplaceholder.typicode.com\\\/posts\",\n  \"responseMessage\" : \"Created\",\n  \"requestDate\" : \"Tue, 12-Apr-2022 10:12 PM GMT+2\",\n  \"responseCode\" : 201,\n  \"responseTimeinMS\" : \"345\"\n}" 2]
    Then Check Element existed ["x-vf-trace-session-id" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element existed ["x-vf-trace-timestamp" 2]
    Then Check Element value ["event-element" "POST" 2]
    Then Check Element existed ["x-vf-trace-transaction-id" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["page-name" "Session VC" 2]
    Then Check Element value ["x-vf-app-state" "Foreground" 2]
    Then Check Element value ["x-vf-net-type" "WiFi" 2]