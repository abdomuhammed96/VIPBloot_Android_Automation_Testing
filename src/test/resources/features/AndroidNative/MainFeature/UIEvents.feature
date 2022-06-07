Feature: UI Events Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["UIEvents"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "UIEvents" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_ui_events"]
   #Then Validate Android Element ["event-description" "Pressed on UI Events"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:button_ui_events"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:button_ui_events"]



  Scenario: Check Page Event - Stay Time for First Fragment on Main activity- after clicking on "UIEvents"
  button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.FirstFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for UIEvents Fragment on Main activity
  - after clicking on "UIEvents" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]



############################################  #################################################
  Scenario: Check UIControl Event after clicking on "Female" Radiobutton on UIEvents Page
    When Click On Button On UIEvents Page["Female_RadioButton"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
   #Then Validate Android Element ["event-description" "Pressed on UI Events"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialRadioButton:rbtwo"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialRadioButton:rbtwo"]



  Scenario: Check UIControl Event after clicking on "OFF" Button on UIEvents Page
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
   #Then Validate Android Element ["event-description" "Pressed on OFF: OFF"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]



  Scenario: Check UIControl Event after clicking on "ON" Button on UIEvents Page
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["ON_OFF_btn"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
   #Then Validate Android Element ["event-description" "Pressed on ON: ON"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatToggleButton:toggleswitch"]



  Scenario: Check UIControl Event after selecting two from the spinner on UIEvents Page
    When Select Element from spinner["two"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["event-description" "Selected item 2"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatSpinner:spinnerObject"]



  Scenario: Check UIControl Event after sliding to the right on the seekbar on UIEvents Page
    When Slide to the right
    When Capture Android Native Events
    #Then Validate Android Element ["page-name" "SMAPI_Presence"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["event-description" "Selected value 3/100"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatSeekBar:seekbarr"]



  Scenario: Check UIControl Event after setting stars on the rating bar on UIEvents Page
    When Slide to the right
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["event-description" "Selected rating 2.0/5"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatRatingBar:ratingbar"]


######################################################### CalenderView #############################################
  Scenario: Check UIControl Event after Clicking on CalenderView on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_calendar_view"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_calendar_view"]



  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "CalnderView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Load Time for CalenderView Fragment - after clicking on "CalnderView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.CalendarViewFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]


  Scenario: Check UIControl Event after Selecting a date on CalenderView Page
    When Click On Button On UIEvents Page["CalenderView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["CertainDate"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.CalendarViewFragment"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["event-description" "NA"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "CalendarView:calenderView"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "CalendarView:calenderView"]



    ######################################### Touch Screen ################################

  Scenario: Check UIControl Event after Clicking on TouchScreen on UIEvents Page
    When Click On Button On UIEvents Page["TouchListener"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_touch_listener"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_touch_listener"]



    ######################################################### DatePicker #############################################
  Scenario: Check UIControl Event after Clicking on DatePicker on UIEvents Page
    When Click On Button On UIEvents Page["DatePicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_date_picker"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_date_picker"]



  Scenario: Check UIControl Event after Selecting a date on Date Picker PopUp
    When Click On Button On UIEvents Page["DatePicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForDatePicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "DatePicker:datePicker"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "DatePicker:datePicker"]



    ######################################################### Alert Dialog #############################################
  Scenario: Check UIControl Event after Clicking on Alert Dialog on UIEvents Page
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:dialogbox"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:dialogbox"]



  Scenario: Check UIControl Event after clicking Ok on Alert Dialog
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForAlert"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AlertDialog"]


  Scenario: Check UIControl Event after clicking Cancel on Alert Dialog
    When Click On Button On UIEvents Page["AlertDialog"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["CancelButtonForAlert"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AlertDialog"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AlertDialog"]


    ######################################################### Number Picker #############################################
  Scenario: Check UIControl Event after Clicking on Number Picker on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_numberPicker"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_numberPicker"]



  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "Number Picker"
  button on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for Number Picker Fragment - after clicking on "Number Picker"
  button on UIEvents Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check UIControl Event after Selecting a number on Number Picker Page
    When Click On Button On UIEvents Page["NumPicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingNumber"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.NumberPickerExample"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["event-description" "Selected position 2"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "NumberPicker:numberPicker"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "NumberPicker:numberPicker"]


     ######################################################### Time Picker #############################################
  Scenario: Check UIControl Event after Clicking on Time Picker on UIEvents Page
    When Click On Button On UIEvents Page["TimePicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_time_picker"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_time_picker"]


  Scenario: Check UIControl Event after Selecting a time on Time Picker PopUp
    When Click On Button On UIEvents Page["TimePicker"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["OKButtonForDatePicker"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "TimePicker:timePicker"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "TimePicker:timePicker"]


###################################### PopUp Menu ########################################
  Scenario: Check UIControl Event after Settings on PopUp Menu
    When Click On Button On UIEvents Page["PopUpMenu"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SettingsForPopUpMenu"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MenuItemImpl:Settings"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MenuItemImpl:Settings"]



    ######################################################### Container #############################################
  Scenario: Check UIControl Event after Clicking on Container on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_containers"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_containers"]


  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "Container"
  button on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for Container Fragment - after clicking on "Container"
  button on UIEvents Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]

  Scenario: Check UIControl Event after Clicking on Relative View on Container Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["RelativeLayoutsForContainers"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["event-description" "NA"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "RelativeLayout:layoutTestRelative"]



  Scenario: Check UIControl Event after Clicking on FrameLayout View on Container Page
    When Click On Button On UIEvents Page["Containers"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["FrameLayoutsForContainers"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ContainersFragment"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["event-description" "NA"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "FrameLayout:layoutTestFrame"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "FrameLayout:layoutTestFrame"]


     ######################################################### ExpandableView #############################################
  Scenario: Check UIControl Event after Clicking on ExpandableView on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_expandable_list_view"]



  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "ExpandableView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Load Time for ExpandableView Fragment - after clicking on "ExpandableView"
  button on UIEvents Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]


  Scenario: Check UIControl Event - Event description for pressing - after Clicking on Relative View on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "ExpandableListView:explistView"]


  Scenario: Check UIControl Event - Event description for expanding - after Clicking on Item on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["event-description" "Expanded Group 1"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "ExpandableListView"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "ExpandableListView"]



  Scenario: Check UIControl Event after Clicking on Relative View on ExpandableView Page
    When Click On Button On UIEvents Page["ExpandableListView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingItemForExpandableView"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["SelectingSubItemForExpandableView"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.ExpandableListViewFragment"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "ExpandableListView:explistView"]
   #Then Validate Android Element ["event-description" "Expanded Group 1"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "ExpandableListView:explistView"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "ExpandableListView:explistView"]


    ######################################################### BasicUIElements #############################################
  Scenario: Check UIControl Event after Clicking on BasicUIElements on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_basic_ui_elements"]



  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "BasicUIElements"
  button on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for BasicUIElements Fragment - after clicking on "BasicUIElements"
  button on UIEvents Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.BasicUiEventsFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]


  Scenario: Check UIControl Event after Clicking on TextViewForBasicUIElements on BasicUIElements Page
    When Click On Button On UIEvents Page["BasicUIElements"]
    When Capture Android Native Events
    When Click On Button On UIEvents Page["TextViewForBasicUIElements"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.BasicUiEventsFragment"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "AppCompatImageButton:ib_basic_test"]


    ############################################### Drag and Drop #########################################

  Scenario: Check UIControl Event after Clicking on Drag and Drop on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_drag_and_drop"]


  Scenario: Check Page Event - Stay Time for UIEvents Fragment - after clicking on "DragAndDrop"
  button on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.UIEvents"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for DragAndDrop Fragment - after clicking on "DragAndDrop"
  button on UIEvents Page
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.DragAndDropFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "SMAPI_Presence"] for event ["Page" "Load Time"]


  Scenario: Check UIControl Event after Drag and Drop
    When Click On Button On UIEvents Page["DragAndDrop"]
    When Capture Android Native Events
    When Drag and Drop
    When Capture Android Native Events
    #Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.uievents.DragAndDropFragment"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["event-description" "Dropped on AppCompatImageView:imgDestination"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" " MaterialButton:btnYes"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" " MaterialButton:btnYes"]

