Feature: Click on Drawer Navigator Logs

  Scenario: Click on Drawer Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"


  Scenario: Click on Open Drawer Two And Close Drawer
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    When Scroll and click "Open Drawer"
    When Capture Events;
    When Scroll and click "Drawer Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "NA"]
    Then Close the Drawer

  Scenario: Click on Open Drawer Two And Upload Image
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    When Scroll and click "Open Drawer"
    When Capture Events;
    When Scroll and click "Upload Image"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "UploadImage"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "UploadImage"] for event ["Page" "NA"]
    When Scroll and click "Upload Image"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Application"] for event ["Application" "NA"]
    Then Validate Android RN Element ["page-name" "UploadImage"] for event ["Application" "NA"]
    Then Validate Android RN Element ["event-description" "Application enters background"] for event ["Application" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Application" "NA"]

  Scenario: Click on Open Drawer Two And Return to Drawer Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    When Scroll and click "Open Drawer"
    When Capture Events;
    When Scroll and click "Drawer Screen 2"
    When Capture Events;
    When Scroll and click "Open Drawer"
    When Capture Events;
    When Scroll and click "Drawer Screen 1"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]

  Scenario: Click on Drawer Navigator And Check Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]

  Scenario: Click on Drawer Screen 2  then Jump to Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    When Scroll and click "Open Drawer"
    When Capture Events;
    When Scroll and click "Drawer Screen 2"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "DrawerScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]


