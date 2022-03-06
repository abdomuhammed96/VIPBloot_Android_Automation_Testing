Feature: Check the Stack Navigator Logs

  Scenario: Click on Stack Navigator
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "Main" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]

  Scenario: Check events when Click on Push Screen2 then Navigate to Screen 3 then Pop to Top
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Navigate to Screen 3"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    When Scroll and click "Pop to Top"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
###########################################

  Scenario: Check events when Click on Push Screen2 then Pop to Previous
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Pop to Previous screen"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Scroll and click "Jump to Main screen"


  Scenario: Click on Push Screen2 then Replace Screen 2 by Screen 3 then Pop to Top
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Replace screen 2 with screen 3"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    When Scroll and click "Pop to Top"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Scroll and click "Jump to Main screen"

  Scenario: Check events when Click on Push Screen2 then Jump to Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Push Screen 2"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    When Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 3]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 3]
    Then Capture And Compare Parameter ["page-name" "StackScreen2" 4]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 4]


  Scenario: Click on Navigate to Screen 3
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    #Then Capture And Compare Parameter ["event-type" "Page" 0]
    When Scroll and click "Navigate to Screen 3"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "Loaded" 2]
    Then Scroll and click "Pop to Top"
    When Capture Events;
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 0]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-description" "Loaded" 1]
    Then Capture And Compare Parameter ["page-name" "StackScreen3" 2]
    Then Capture And Compare Parameter ["event-description" "UnLoaded" 2]
    Then Scroll and click "Jump to Main screen"

  Scenario: Click on Stack Navigator And Check Main Screen
    Given User opens App
    When Capture Events;
    When Scroll and click "Stack Navigator"
    When Capture Events;
    Then Scroll and click "Jump to Main screen"
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Page" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture And Compare Parameter ["page-name" "StackScreen1" 1]
    Then Capture And Compare Parameter ["event-element" "Stay Time" 1]

