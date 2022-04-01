Feature: check User Id Feature
  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["Open_UserIdPage_Button"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Set Random User Id" button on Main Page
    Then Click Back Button
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_set_user_id" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.SecondFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Set Random User Id" 0]

  Scenario: Check Page Event - Stay Time for First Fragment on Main activity
  - after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.FirstFragment" 1]


  Scenario: Check Page Event - Load Time for User Id fragment - after clicking on "User Id" button on Main Page
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.UserIdFragment" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]


  Scenario: Check UIControl Event after clicking on "Set User Id" btn on User Id page
    When Click On a Button On User Id Page ["Set_User_Id"]
    And
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_seclib_set_user_id" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.UserIdFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Set User Id" 0]

  Scenario: Check User Id Value after Setting a random value
    When Set a user Id value ["12345"]
    And Click On a Button On User Id Page ["Set_User_Id"]
    Then Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_seclib_set_user_id" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.UserIdFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    #Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on Set User Id" 0]
    Then Check Element value is not null ["x-vf-user-id" 0]

