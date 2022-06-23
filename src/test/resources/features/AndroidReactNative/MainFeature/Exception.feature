Feature: Check the Application event in Exception

  Scenario: Click on Cannot read
    Given User opens App
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Application" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Application" "NA"]
    When Scroll and click "Cannot read property of undefined"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]
    Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]


Scenario: Click on Not defined Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Not defined"
  When Capture Events;
  Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
  Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]
  Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
  Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]

Scenario: Click on "Read Property" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Cannot read property of null"
  When Capture Events;
  Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
  Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]
  Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
  Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]

Scenario: Click on "Set Property" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Cannot set property of null"
  When Capture Events;
  Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
  Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]
  Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
  Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]

Scenario: Click on "Divide by Zero" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "[NATIVE]Divide by zero crash"
  When Capture Events;
  Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
  Then Validate Android RN Element ["page-name" "Main"] for event ["Application" "NA"]
  Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
  Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]