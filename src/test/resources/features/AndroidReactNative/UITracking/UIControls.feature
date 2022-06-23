Feature: checking Opening UI Control Page events
# data table
#  Scenario Outline: Check App Launch Events

  Background: User Opens App and clicks on UI Controls
    When Capture events;
    When user clicks on ["UI Controls"]
    When Capture events;

  Scenario: Check page events on clicking on UI Control
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-element" "Load Time"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "Load Time"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Load Time"]

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-element" "Stay Time"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Page" "Stay Time"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "Stay Time"]

    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Page" "NA"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-description" "Loaded"] for event ["Page" "NA"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["Page" "NA"]
    Then Validate Android RN Element ["event-type" "Page"] for event ["Page" "NA"]


  Scenario: Check Clicking "PRESS ME" button
    When User tests an element["PRESS ME"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["event-description" "onPress"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "Button - sampleButtonId"]
    Then Validate Android RN Element ["event-element" "Button - sampleButtonId"] for event ["UIControl" "Button - sampleButtonId"]

  Scenario: Check Clicking "Type Input" in case of onFocus
    When User tests an element["Type something .."]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-description" "onFocus"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-element" "TextInput - sampleTextInputId"] for event ["UIControl" "TextInput - sampleTextInputId"]

  Scenario: Check Clicking "Type Input" in case of onBlur
    When User tests an element["Type something .."]
    When Capture events On UI Controls Page
    When User tests an element["TextInput"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-description" "onBlur"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "TextInput - sampleTextInputId"]
    Then Validate Android RN Element ["event-element" "TextInput - sampleTextInputId"] for event ["UIControl" "TextInput - sampleTextInputId"]

  Scenario: Check Clicking on "Text" field with a normal press
    When User tests an element["Please try to press & longPress me"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-description" "onPress"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-element" "Text - paragraph"] for event ["UIControl" "Text - paragraph"]

  Scenario: Check Clicking on "Text" field with a long press
    When Click on Long Press Button ["Please try to press & longPress me"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-description" "onLongPress"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "Text - paragraph"]
    Then Validate Android RN Element ["event-element" "Text - paragraph"] for event ["UIControl" "Text - paragraph"]

  Scenario: Check Clicking on "Slider" field
    When Slide
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["event-description" "onSlidingComplete"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "Slider - sampleSliderId"]
    Then Validate Android RN Element ["event-element" "Slider - sampleSliderId"] for event ["UIControl" "Slider - sampleSliderId"]



  Scenario Outline: Check Clicking on "Switch" field
    When Clicking on a specific element ["Switch"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element [<key> <value>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key1> <value1>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key2> <value2>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key3> <value3>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key4> <value4>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key5> <value5>] for event ["UIControl" "Switch - sampleSwitchId"]
    Then Validate Android RN Element [<key6> <value6>] for event ["UIControl" "Switch - sampleSwitchId"]
    Examples:
      | key                  |  value      | key1            | value1 | key2             | value2       | key3                | value3          | key4        | value4       | key5         | value5      | key6            | value6                   |
      | "device-orientation" | "Portrait  | "x-vf-net-type"  | "WiFi" | "x-vf-app-state" | "Foreground" | "event-description" | "onValueChange" | "page-name" | "UITracking" | "event-type" | "UIControl" | "event-element" | "Switch - sampleSwitchId" |

  Scenario: Check Clicking on "Touchable Opacity" field
    When Clicking on a specific element ["x"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" ""]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" ""]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" ""]
    Then Validate Android RN Element ["event-description" "onPress"] for event ["UIControl" ""]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" ""]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" ""]
    Then Validate Android RN Element ["event-element" "Touchable - sampleTouchableId"] for event ["UIControl" ""]


  Scenario: Check "Touchable without exception"
    When Click on Long Press Button ["long press"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UICustom" "Touchable - sampleTouchableId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UICustom" "Touchable - sampleTouchableId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UICustom" "Touchable - sampleTouchableId"]
    Then Validate Android RN Element ["event-element" "Touchable - sampleTouchableId"] for event ["UICustom" "Touchable - sampleTouchableId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UICustom" "Touchable - sampleTouchableId"]
    Then Validate Android RN Element ["event-type" "UICustom"] for event ["UICustom" "Touchable - sampleTouchableId"]

  Scenario: Check Clicking on "Picker" field
    When User tests an element["Java"]
    When Capture events On UI Controls Page
    When User tests an element["IOS"]
    When Capture events On UI Controls Page
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["event-description" "onValueChange"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["page-name" "UITracking"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["event-type" "UIControl"] for event ["UIControl" "Picker - samplePickerId"]
    Then Validate Android RN Element ["event-element" "Picker - samplePickerId"] for event ["UIControl" "Picker - samplePickerId"]

   # | "Android"    |
    #| "JavaScript" |
   # | "JAVA"       |







