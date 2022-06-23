Feature: Check the Stack Navigator Logs

  Scenario: Click on Stack Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]

  Scenario: Check events when Click on Push Screen2 then Navigate to Screen 3 then Pop to Top
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "NA"]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "NA"]
    When Scroll and click "Navigate to Screen 3"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    When Scroll and click "Pop to Top"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
###########################################

  Scenario: Check events when Click on Push Screen2 then Pop to Previous
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "Pop to Previous screen"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"


  Scenario: Click on Push Screen2 then Replace Screen 2 by Screen 3 then Pop to Top
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "Replace screen 2 with screen 3"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    When Scroll and click "Pop to Top"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"

  Scenario: Check events when Click on Push Screen2 then Jump to Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    When Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen2"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]


  Scenario: Click on Navigate to Screen 3
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]
    When Scroll and click "Navigate to Screen 3"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Scroll and click "Pop to Top"
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "StackScreen3"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "UnLoaded"] for event ["Page" "NA"]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Stack Navigator And Check Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "StackScreen1"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]

