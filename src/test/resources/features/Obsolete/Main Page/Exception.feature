Feature: Check the Application event in Exception

  Scenario: Click on Cannot read
    Given User opens App
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    When Scroll and click "Cannot read property of undefined"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]


Scenario: Click on Not defined Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Not defined"
  When Capture Events;
  Then Capture And Compare Parameter ["event-type" "Application" 0]
  Then Capture And Compare Parameter ["page-name" "Main" 0]
  Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
  Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]

Scenario: Click on "Read Property" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Cannot read property of null"
  When Capture Events;
  Then Capture And Compare Parameter ["event-type" "Application" 0]
  Then Capture And Compare Parameter ["page-name" "Main" 0]
  Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
  Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]

Scenario: Click on "Set Property" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "Cannot set property of null"
  When Capture Events;
  Then Capture And Compare Parameter ["event-type" "Application" 0]
  Then Capture And Compare Parameter ["page-name" "Main" 0]
  Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
  Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]

Scenario: Click on "Divide by Zero" Exception
  Given User opens App
  When Capture Events;
  When Scroll and click "[NATIVE]Divide by zero crash"
  When Capture Events;
  Then Capture And Compare Parameter ["event-type" "Application" 0]
  Then Capture And Compare Parameter ["page-name" "Main" 0]
  Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
  Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]