Feature: Check the Tab Navigator Logs

  Scenario: Click on Tab Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "Main" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Scroll and click "Jump to Main screen"


  Scenario: Click on Tap Screen 2 From Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "TapScreen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "TabScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "TabScreen2" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]

  Scenario: Click on Tap Screen 3 From Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Tap Screen 3 From Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "TapScreen 2"
    When Capture Events;
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    When Scroll and click "TapScreen 2"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Capture And Compare Parameter ["page-name" "TabScreen2" 4]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 4]

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "TabScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Capture And Compare Parameter ["page-name" "TabScreen3" 4]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 4]

