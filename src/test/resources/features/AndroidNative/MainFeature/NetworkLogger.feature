Feature: check Network Events when network is on

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["Network_Button"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "Network" button on Main Page
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_network_activity" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.SecondFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]
    Then Check Element value ["event-description" "Pressed on NetworkActivity" 0]

  Scenario: Check Page Event - Stay Time for Main Activity - after clicking on "Network"
  button on Main Page
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Stay Time for second Fragment on Main activity
  - after clicking on "Network" button on Main Page
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Stay Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "MainActivity" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.SecondFragment" 2]


  Scenario: Check Page Event - Load Time for Log Component Page - after clicking on "Log Component" button on Main Page
    Then Check Element value ["event-type" "Page" 3]
    Then Check Element value ["device-orientation" "Portrait" 3]
    Then Check Element value ["event-element" "Load Time" 3]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 3]
    Then Check Element value is not null ["x-vf-trace-timestamp" 3]
    Then Check Element value is not null ["x-vf-trace-session-id" 3]
    Then Check Element value is not null ["event-description" 3]
    Then Check Element value ["page-name" "AllNetworkActivity" 3]
    Then Check Element value ["subpage-name" "NA" 3]
    Then Check Element value ["x-vf-trace-tid" "NA" 3]
    Then Check Element value ["x-vf-user-id" "NA" 3]
    Then Check Element value ["x-vf-net-band" "NA" 3]


  Scenario: Check UIControl Event when clicking on OKHTTP3_GET_REQUEST button
    When Click On Network Button ["OKHTTP3_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:okhttp3GetRequest" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP3 GET REQUEST" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on OKHTTP3_GET_REQUEST button
    When Click On Network Button ["OKHTTP3_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]


  Scenario: Check UIControl Event when clicking on OKHTTP3_POST_REQUEST button
    When Click On Network Button ["OKHTTP3_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:okhttp3PostRequest" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP3 POST REQUEST" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event clicking on OKHTTP3_POST_REQUEST button
    When Click On Network Button ["OKHTTP3_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "POST" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

    #################################
  Scenario: Check UIControl Event when clicking on OKHTTP2_GET_REQUEST button
    When Click On Network Button ["OKHTTP2_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:okhttp2GetRequest" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP2 GET REQUEST" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on OKHTTP2_GET_REQUEST button
    When Click On Network Button ["OKHTTP2_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

  Scenario: Check UIControl Event when clicking on OKHTTP2_POST_REQUEST button
    When Click On Network Button ["OKHTTP2_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:okhttp2PostRequest" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP2 POST REQUEST" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event clicking on OKHTTP2_POST_REQUEST button
    When Click On Network Button ["OKHTTP2_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "POST" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    ######################################### retro###################
  Scenario: Check UIControl Event when clicking on RETROFIT_WITH_OKHTTP2 button
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:retrofitOkhttp2" 0]
    Then Check Element value ["event-description" "Pressed on Retrofit with OkHttp2" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Page Event - Stay Time for AllNetworkActivity Activity - after clicking on "RETROFIT_WITH_OKHTTP2" button on Network Page
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for RetrofitExample Activity - after clicking on "RETROFIT_WITH_OKHTTP2" button on Network Page
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Page" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "Load Time" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
    Then Check Element value is not null ["event-description" 2]
    Then Check Element value ["page-name" "RetrofitExample" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element value ["x-vf-trace-tid" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]

  Scenario: Check Network Event when clicking on RETROFIT_WITH_OKHTTP2 button
    When Click On Network Button ["RETROFIT_WITH_OKHTTP2"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 3]
    Then Check Element value ["device-orientation" "Portrait" 3]
    Then Check Element value ["event-element" "GET" 3]
    Then Check Element value is not null ["page-name" 3]
    Then Check Element value ["page-name" "RetrofitExample" 3]
    Then Check Element value ["subpage-name" "NA" 3]
    Then Check Element value ["x-vf-user-id" "NA" 3]
    Then Check Element value ["x-vf-net-band" "NA" 3]
    Then Check Element value is not null ["x-vf-trace-tid" 3]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 3]
    Then Check Element value is not null ["x-vf-trace-timestamp" 3]
    Then Check Element value is not null ["x-vf-trace-session-id" 3]

##############################################################

  Scenario: Check UIControl Event when clicking on URL_CONNECTION_GET_REQUEST button
    When Click On Network Button ["URL_CONNECTION_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:urlconnectiongetrequest" 0]
    Then Check Element value ["event-description" "Pressed on URL Connection Get Request" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on URL_CONNECTION_GET_REQUEST button
    When Click On Network Button ["URL_CONNECTION_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

  Scenario: Check UIControl Event when clicking on URL_CONNECTION_POST_REQUEST button
    When Click On Network Button ["URL_CONNECTION_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:urlconnectionpostrequest" 0]
    Then Check Element value ["event-description" "Pressed on URL Connection POST Request" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event clicking on URL_CONNECTION_POST_REQUEST button
    When Click On Network Button ["URL_CONNECTION_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "POST" 1]
    Then Check Element value is not null ["page-name" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]


  ###################################################





  Scenario: Check UIControl Event when clicking on VOLLEY_GET_REQUEST button
    When Click On Network Button ["VOLLEY_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:volleyrequest" 0]
    Then Check Element value ["event-description" "Pressed on Volley Get Request" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on VOLLEY_GET_REQUEST button
    When Click On Network Button ["VOLLEY_GET_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

  Scenario: Check UIControl Event when clicking on VOLLEY_POST_REQUEST button
    When Click On Network Button ["VOLLEY_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:volleypostrequest" 0]
    Then Check Element value ["event-description" "Pressed on Volley Post Request" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on VOLLEY_POST_REQUEST button
    When Click On Network Button ["VOLLEY_POST_REQUEST"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "POST" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    ########################################################Custom##############
  Scenario: Check UIControl Event when clicking on Custom Network Event button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:customrequest" 0]
    Then Check Element value ["event-description" "Pressed on Custom Network Event" 0]
    Then Check Element value ["page-name" "AllNetworkActivity" 0]
    Then Check Element value ["subpage-name" "NA" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on CUSTOM_NETWORK_EVENT button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "AllNetworkActivity" 1]
    Then Check Element value ["subpage-name" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

  Scenario: Check Network Event when clicking on CUSTOM_NETWORK_EVENT button
    When Click On Network Button ["CUSTOM_NETWORK_EVENT"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 2]
    Then Check Element value ["device-orientation" "Portrait" 2]
    Then Check Element value ["event-element" "GET" 2]
    Then Check Element value ["page-name" "AllNetworkActivity" 2]
    Then Check Element value ["subpage-name" "NA" 2]
    Then Check Element value ["x-vf-user-id" "NA" 2]
    Then Check Element value ["x-vf-net-band" "NA" 2]
    Then Check Element value is not null ["x-vf-trace-tid" 2]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 2]
    Then Check Element value is not null ["x-vf-trace-timestamp" 2]
    Then Check Element value is not null ["x-vf-trace-session-id" 2]
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
