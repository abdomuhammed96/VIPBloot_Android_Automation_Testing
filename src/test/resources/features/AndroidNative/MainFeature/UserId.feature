Feature: check User Id Feature
  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["Open_UserIdPage_Button"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Set Random User Id" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.SecondFragment"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["event-description" "Pressed on Set Random User Id"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_set_user_id"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_set_user_id"]



  Scenario: Check Page Event - Stay Time for Second Fragment on Main activity
  - after clicking on "User ID" button on Main Page

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.SecondFragment"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for User Id fragment - after clicking on "User Id" button on Main Page

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.UserIdFragment"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]


  Scenario: Check UIControl Event after clicking on "Set User Id" btn on User Id page
    When Click On a Button On User Id Page ["Set_User_Id"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.UserIdFragment"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["event-description" "Pressed on Set User Id"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]



  Scenario: Check User Id Value after Setting a random value
    When Set a user Id value ["12345"]
    And Click On a Button On User Id Page ["Set_User_Id"]
    Then Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.UserIdFragment"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["event-description" "Pressed on Set User Id"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_seclib_set_user_id"]
    #Then Check Element value ["x-vf-net-band" "NA" 0]


