Feature: Check the Tab Navigator Logs

  Scenario: Click on Tab Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"


  Scenario: Click on Tap Screen 2 From Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "TapScreen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "TabScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "TabScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]

  Scenario: Click on Tap Screen 3 From Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Tap Screen 3 From Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "TapScreen 2"
    When Capture Events;
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 1
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    When Scroll and click "TapScreen 2"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "TabScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]

  Scenario: Click on Tab Navigator And Check Main Screen from Tap Screen 2
    Given User opens App
    When Capture Events;
    When Scroll and click "Tab Navigator"
    When Capture Events;
    When Scroll and click "TapScreen 3"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "TabScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "TabScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]

