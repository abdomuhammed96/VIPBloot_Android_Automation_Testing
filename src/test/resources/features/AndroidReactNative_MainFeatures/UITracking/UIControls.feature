Feature: checking Opening UI Control Page events
# data table
#  Scenario Outline: Check App Launch Events

  Background: User Opens App and clicks on UI Controls
    When Capture events;
    When user clicks on ["UI Controls"]
    When Capture events;

  Scenario: Check page events on clicking on UI Control
    Then Capture UI Controls page events And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture UI Controls page events And Compare Parameter ["event-element" "Load Time" 0]
    Then Capture UI Controls page events And Compare Parameter ["page-name" "UITracking" 0]
    Then Capture UI Controls page events And Compare Parameter ["event-type" "Page" 0]

    Then Capture UI Controls page events And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture UI Controls page events And Compare Parameter ["event-element" "Stay Time" 1]
    Then Capture UI Controls page events And Compare Parameter ["page-name" "Main" 1]
    Then Capture UI Controls page events And Compare Parameter ["event-type" "Page" 1]

    Then Capture UI Controls page events And Compare Parameter ["device-orientation" "Portrait" 2]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-net-type" "WiFi" 2]
    Then Capture UI Controls page events And Compare Parameter ["x-vf-app-state" "Foreground" 2]
    Then Capture UI Controls page events And Compare Parameter ["event-description" "Loaded" 2]
    Then Capture UI Controls page events And Compare Parameter ["page-name" "UITracking" 2]
    Then Capture UI Controls page events And Compare Parameter ["event-type" "Page" 2]


  Scenario: Check Clicking "PRESS ME" button
    When User tests an element["PRESS ME"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onPress" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Button - sampleButtonId" 0]

  Scenario: Check Clicking "Type Input" in case of onFocus
    When User tests an element["Type something .."]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onFocus" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "TextInput - sampleTextInputId" 0]

  Scenario: Check Clicking "Type Input" in case of onBlur
    When User tests an element["Type something .."]
    When Capture events On UI Controls Page
    When User tests an element["TextInput"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onBlur" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "TextInput - sampleTextInputId" 0]

  Scenario: Check Clicking on "Text" field with a normal press
    When User tests an element["Please try to press & longPress me"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onPress" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Text - paragraph" 0]

  Scenario: Check Clicking on "Text" field with a long press
    When Click on Long Press Button ["Please try to press & longPress me"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onLongPress" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Text - paragraph" 0]

  Scenario: Check Clicking on "Slider" field
    When Slide
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onSlidingComplete" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Slider - sampleSliderId" 0]



  Scenario Outline: Check Clicking on "Switch" field
    When Clicking on a specific element ["Switch"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page [<key> <value> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key1> <value1> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key2> <value2> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key3> <value3> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key4> <value4> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key5> <value5> <eventIndex>]
    Then Compare Parameters On UI Controls Page [<key6> <value6> <eventIndex>]
    Examples:
      | key                  | value      | eventIndex | key1            | value1 | key2             | value2       | key3                | value3          | key4        | value4       | key5         | value5      | key6            | value6                    |
      | "device-orientation" | "Portrait" | 0          | "x-vf-net-type" | "WiFi" | "x-vf-app-state" | "Foreground" | "event-description" | "onValueChange" | "page-name" | "UITracking" | "event-type" | "UIControl" | "event-element" | "Switch - sampleSwitchId" |

  Scenario: Check Clicking on "Touchable Opacity" field
    When Clicking on a specific element ["x"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onPress" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Touchable - sampleTouchableId" 0]


  Scenario: Check "Touchable without exception"
    When Click on Long Press Button ["long press"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Touchable - sampleTouchableId" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UICustom" 0]

  Scenario: Check Clicking on "Picker" field
    When User tests an element["Java"]
    When Capture events On UI Controls Page
    When User tests an element["IOS"]
    When Capture events On UI Controls Page
    Then Compare Parameters On UI Controls Page ["device-orientation" "Portrait" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-net-type" "WiFi" 0]
    Then Compare Parameters On UI Controls Page ["x-vf-app-state" "Foreground" 0]
    Then Compare Parameters On UI Controls Page ["event-description" "onValueChange" 0]
    Then Compare Parameters On UI Controls Page ["page-name" "UITracking" 0]
    Then Compare Parameters On UI Controls Page ["event-type" "UIControl" 0]
    Then Compare Parameters On UI Controls Page ["event-element" "Picker - samplePickerId" 0]

   # | "Android"    |
    #| "JavaScript" |
   # | "JAVA"       |







