Feature: UI Events Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["UIEvents"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "UIEvents" button on Main Page
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:button_ui_events" 0]
    Then Check Element value ["event-description" "Pressed on UI Events" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check Page Event - Stay Time for First Fragment on Main activity- after clicking on "UIEvents"
  button on Main Page
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for UIEvents Fragment on Main activity
  - after clicking on "UIEvents" button on Main Page
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 2]

############################################  #################################################



  Scenario: Check UIControl Event after clicking on "Female" Radiobutton on UIEvents Page
    When Click On Button On UIEvents Page["Female_RadioButton"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialRadioButton:rbtwo" 0]
    Then Check Element value ["event-description" "Checked on Female" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check UIControl Event after clicking on "OFF" Button on UIEvents Page
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatToggleButton:toggleswitch" 0]
    Then Check Element value ["event-description" "Pressed on OFF: OFF" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check UIControl Event after clicking on "ON" Button on UIEvents Page
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatToggleButton:toggleswitch" 0]
    Then Check Element value ["event-description" "Pressed on ON: ON" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check UIControl Event after selecting two from the spinner on UIEvents Page
    When Select Element from spinner["two"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatSpinner:spinnerObject" 0]
    Then Check Element value ["event-description" "Selected item 2" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check UIControl Event after sliding to the right on the seekbar on UIEvents Page
    When Slide to the right
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatSeekBar:seekbarr" 0]
    Then Check Element value ["event-description" "Selected value 3/100" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check UIControl Event after setting stars on the rating bar on UIEvents Page
    When Slide to the right
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatRatingBar:ratingbar" 0]
    Then Check Element value ["event-description" "Selected rating 2.0/5" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
######################################################### CalenderView #############################################
  Scenario: Check UIControl Event after Clicking on CalenderView on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_calendar_view" 0]
    Then Check Element value ["event-description" "Pressed on Calendar View" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "CalnderView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for CalenderView Fragment - after clicking on "CalnderView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.CalendarViewFragment" 2]

  Scenario: Check UIControl Event after Selecting a date on CalenderView Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["CertainDate"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "CalendarView:calenderView" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.CalendarViewFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]

    ######################################### Touch Screen ################################

  Scenario: Check UIControl Event after Clicking on TouchScreen on UIEvents Page
    When Click On Button On UIEvents Page["TouchListener"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_touch_listener" 0]
    Then Check Element value ["event-description" "Pressed on Touch Listener" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

    ######################################################### DatePicker #############################################
  Scenario: Check UIControl Event after Clicking on DatePicker on UIEvents Page
    When Click On Button On UIEvents Page["DatePicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_date_picker" 0]
    Then Check Element value ["event-description" "Pressed on Date Picker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check UIControl Event after Selecting a date on Date Picker PopUp
    When Click On Button On UIEvents Page["DatePicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForDatePicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "DatePicker:datePicker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]

    ######################################################### Alert Dialog #############################################
  Scenario: Check UIControl Event after Clicking on Alert Dialog on UIEvents Page
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:dialogbox" 0]
    Then Check Element value ["event-description" "Pressed on Alert Dialog" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check UIControl Event after clicking Ok on Alert Dialog
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForAlert"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AlertDialog" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Positive button" 0]


  Scenario: Check UIControl Event after clicking Cancel on Alert Dialog
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["CancelButtonForAlert"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AlertDialog" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Negative button" 0]

    ######################################################### Number Picker #############################################
  Scenario: Check UIControl Event after Clicking on Number Picker on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_numberPicker" 0]
    Then Check Element value ["event-description" "Pressed on Number Picker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "Number Picker"
  button on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for Number Picker Fragment - after clicking on "Number Picker"
  button on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.NumberPickerExample" 2]

  Scenario: Check UIControl Event after Selecting a number on Number Picker Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingNumber"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "NumberPicker:numberPicker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.NumberPickerExample" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Selected position 2" 0]

     ######################################################### Time Picker #############################################
  Scenario: Check UIControl Event after Clicking on Time Picker on UIEvents Page
    When Click On Button On UIEvents Page["TimePicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_date_picker" 0]
    Then Check Element value ["event-description" "Pressed on Date Picker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check UIControl Event after Selecting a time on Time Picker PopUp
    When Click On Button On UIEvents Page["TimePicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForDatePicker"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "TimePicker:timePicker" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

###################################### PopUp Menu ########################################
  Scenario: Check UIControl Event after Settings on PopUp Menu
    When Click On Button On UIEvents Page["PopUpMenu"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SettingsForPopUpMenu"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MenuItemImpl:Settings" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Menu Settings" 0]

    ######################################################### Container #############################################
  Scenario: Check UIControl Event after Clicking on Container on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_containers" 0]
    Then Check Element value ["event-description" "Pressed on Containers" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "Container"
  button on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for Container Fragment - after clicking on "Container"
  button on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment" 2]

  Scenario: Check UIControl Event after Clicking on Relative View on Container Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["RelativeLayoutsForContainers"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "RelativeLayout:layoutTestRelative" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]

  Scenario: Check UIControl Event after Clicking on FrameLayout View on Container Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["FrameLayoutsForContainers"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "FrameLayout:layoutTestFrame" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]

     ######################################################### ExpandableView #############################################
  Scenario: Check UIControl Event after Clicking on ExpandableView on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_expandable_list_view" 0]
    Then Check Element value ["event-description" "Pressed on Expandable ListView" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "ExpandableView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for ExpandableView Fragment - after clicking on "ExpandableView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment" 2]

  Scenario: Check UIControl Event - Event description for pressing - after Clicking on Relative View on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "ExpandableListView:explistView" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Group 1" 0]


  Scenario: Check UIControl Event - Event description for expanding - after Clicking on Item on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "ExpandableListView" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value ["event-description" "Expanded Group 1" 1]



  Scenario: Check UIControl Event after Clicking on Relative View on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingSubItemForExpandableView"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "ExpandableListView:explistView" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "NA" 0]

    ######################################################### BasicUIElements #############################################
  Scenario: Check UIControl Event after Clicking on BasicUIElements on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_basic_ui_elements" 0]
    Then Check Element value ["event-description" "Pressed on Basic UI Elements" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "BasicUIElements"
  button on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for BasicUIElements Fragment - after clicking on "BasicUIElements"
  button on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.BasicUiEventsFragment" 2]

  Scenario: Check UIControl Event after Clicking on TextViewForBasicUIElements on BasicUIElements Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["TextViewForBasicUIElements"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "AppCompatImageButton:ib_basic_test" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.BasicUiEventsFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on AppCompatImageButton" 0]

    ############################################### Drag and Drop #########################################

  Scenario: Check UIControl Event after Clicking on Drag and Drop on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_drag_and_drop" 0]
    Then Check Element value ["event-description" "Pressed on Drag And Drop" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "DragAndDrop"
  button on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for DragAndDrop Fragment - after clicking on "DragAndDrop"
  button on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.DragAndDropFragment" 2]

  Scenario: Check UIControl Event after Drag and Drop
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    When Drag and Drop
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" " MaterialButton:btnYes" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.uievents.DragAndDropFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Dropped on AppCompatImageView:imgDestination" 0]