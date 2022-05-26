Feature: Click on Drawer Navigator Logs

  Scenario: Click on Drawer Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "Main" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
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
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 2]
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
    Then Capture And Compare Parameter ["page-name" "UploadImage" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "UploadImage" 2]
    When Scroll and click "Upload Image"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Application" 0]
    Then Capture And Compare Parameter ["page-name" "UploadImage" 0]
    Then Capture And Compare Parameter ["event-description" "Application enters background" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]

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
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 4]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 4]

  Scenario: Click on Drawer Navigator And Check Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Drawer Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]

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
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Capture And Compare Parameter ["page-name" "DrawerScreen2" 4]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 4]


