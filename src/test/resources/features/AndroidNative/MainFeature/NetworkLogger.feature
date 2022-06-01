Feature: check Network Events when network is on

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["Network_Button"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Network" button on Main Page
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.SecondFragment"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["event-description" "Pressed on NetworkActivity"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_network_activity"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_network_activity"]



  Scenario: Check Page Event - Stay Time for Main Activity - after clicking on "Network"
  button on Main Page

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]



  Scenario: Check Page Event - Stay Time for second Fragment on Main activity
  - after clicking on "Network" button on Main Page
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



  Scenario: Check Page Event - Load Time for Log Component Page - after clicking on "Log Component" button on Main Page
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]



  Scenario: Check UIControl Event when clicking on OKHTTP3_GET_REQUEST button
    When Click On Network Button ["OKHTTP3_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["event-description" "Pressed on NetworkActivity"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:okhttp3GetRequest"]




  Scenario: Check Network Event when clicking on OKHTTP3_GET_REQUEST button
    When Click On Network Button ["OKHTTP3_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check UIControl Event when clicking on OKHTTP3_POST_REQUEST button
    When Click On Network Button ["OKHTTP3_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.SecondFragment"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 POST REQUEST"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:okhttp3PostRequest"]



  Scenario: Check Network Event clicking on OKHTTP3_POST_REQUEST button
    When Click On Network Button ["OKHTTP3_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "POST"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "POST"]


    #################################
  Scenario: Check UIControl Event when clicking on OKHTTP2_GET_REQUEST button
    When Click On Network Button ["OKHTTP2_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP2 GET REQUEST"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:okhttp2GetRequest"]


  Scenario: Check Network Event when clicking on OKHTTP2_GET_REQUEST button
    When Click On Network Button ["OKHTTP2_GET_REQUEST"]
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check UIControl Event when clicking on OKHTTP2_POST_REQUEST button
    When Click On Network Button ["OKHTTP2_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP2 POST REQUEST"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:okhttp2PostRequest"]


  Scenario: Check Network Event clicking on OKHTTP2_POST_REQUEST button
    When Click On Network Button ["OKHTTP2_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "POST"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "POST"]


    ######################################### retro###################
  Scenario: Check UIControl Event when clicking on RETROFIT_WITH_OKHTTP2 button
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["event-description" "Pressed on Retrofit with OkHttp2"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:retrofitOkhttp2"]


  Scenario: Check Page Event - Stay Time for AllNetworkActivity Activity - after clicking on "RETROFIT_WITH_OKHTTP2" button on Network Page
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Stay Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Stay Time"]


  Scenario: Check Page Event - Load Time for RetrofitExample Activity - after clicking on "RETROFIT_WITH_OKHTTP2" button on Network Page
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "RetrofitExample"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]


  Scenario: Check Network Event when clicking on RETROFIT_WITH_OKHTTP2 button
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "RetrofitExample"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]


##############################################################

  Scenario: Check UIControl Event when clicking on URL_CONNECTION_GET_REQUEST button
    When Click On Network Button ["URL_CONNECTION_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["event-description" "Pressed on URL Connection Get Request"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:urlconnectiongetrequest"]


  Scenario: Check Network Event when clicking on URL_CONNECTION_GET_REQUEST button
    When Click On Network Button ["URL_CONNECTION_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check UIControl Event when clicking on URL_CONNECTION_POST_REQUEST button
    When Click On Network Button ["URL_CONNECTION_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["event-description" "Pressed on URL Connection POST Request"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:urlconnectionpostrequest"]


  Scenario: Check Network Event clicking on URL_CONNECTION_POST_REQUEST button
    When Click On Network Button ["URL_CONNECTION_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "POST"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "POST"]


  ###################################################


  Scenario: Check UIControl Event when clicking on VOLLEY_GET_REQUEST button
    When Click On Network Button ["VOLLEY_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["event-description" "Pressed on Volley Get Request"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:volleyrequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:volleyrequest"]


  Scenario: Check Network Event when clicking on VOLLEY_GET_REQUEST button
    When Click On Network Button ["VOLLEY_GET_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]


  Scenario: Check UIControl Event when clicking on VOLLEY_POST_REQUEST button
    When Click On Network Button ["VOLLEY_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["event-description" "Pressed on Volley Post Request"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:volleypostrequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:volleypostrequest"]


  Scenario: Check Network Event when clicking on VOLLEY_POST_REQUEST button
    When Click On Network Button ["VOLLEY_POST_REQUEST"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "POST"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "POST"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "POST"]


    ########################################################Custom##############
  Scenario: Check UIControl Event when clicking on Custom Network Event button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["event-description" "Pressed on Custom Network Event"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:customrequest"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:customrequest"]


  Scenario: Check Network Event when clicking on CUSTOM_NETWORK_EVENT button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]


  Scenario: Check Network Event when clicking on CUSTOM_NETWORK_EVENT button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "AllNetworkActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]

  ######################################## Network logger is off #############################

  Scenario: Check No Network event is capture when clicking on OKHTTP3_GET_REQUEST button and
    network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["OKHTTP3_GET_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on OKHTTP3_POST_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["OKHTTP3_POST_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on OKHTTP2_GET_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["OKHTTP2_GET_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on OKHTTP2_POST_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["OKHTTP2_POST_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on RETROFIT_WITH_OKHTTP2 button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on URL_CONNECTION_GET_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["URL_CONNECTION_GET_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on URL_CONNECTION_POST_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["URL_CONNECTION_POST_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on VOLLEY_GET_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["VOLLEY_GET_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on VOLLEY_POST_REQUEST button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["VOLLEY_POST_REQUEST"]
    Then Check Number of Events Captured [1]

  Scenario: Check No Network event is capture when clicking on CUSTOM_NETWORK_EVENT button and
  network is off
    When Click On Network Button ["Network_On_Off"]
    When Capture Android Native Events
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    Then Check Number of Events Captured [2]
