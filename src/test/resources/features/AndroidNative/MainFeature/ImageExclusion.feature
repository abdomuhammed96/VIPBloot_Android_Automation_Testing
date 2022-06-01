Feature: check Image Exclusion Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["ImageExclusionBtn"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "ImageExclusionBtn" button on Main Page

    Then Validate Android Element ["page-name" "CreateEventActivity"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["event-description" "Custom Event Description"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.SecondFragment"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-app-state" "Foreground"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-user-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_image_execlusion"]




  Scenario: Check Page Event - Stay Time for Second Fragment on Main activity- after clicking on "ImageExclusionBtn"
  button on Main Page

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



  Scenario: Check Page Event - Load Time for ImageExclusionBtn Fragment on Main activity
  - after clicking on "ImageExclusionBtn" button on Main Page

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Page" "Load Time"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Page" "Load Time"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Page" "Load Time"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Page" "Load Time"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Page" "Load Time"]



############################################ OKHTTP3_Download_Image #################################################

  Scenario: Check UIControl Event when clicking on OKHTTP3_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events


    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp3_download_image"]



  Scenario: Check Network Event when clicking on OKHTTP3_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]


  Scenario: Check excluding Network event, which its endpoint has "png", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpg", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpg"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpeg", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpeg"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "css", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.css"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "js", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.js"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "gif", when clicking on OKHTTP3_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//.gif"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check Number of Events Captured [1]

################################################ OKHTTP2_Download_Image ################################################
  Scenario: Check UIControl Event when clicking on OKHTTP2_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP2 DOWNLOAD IMAGE"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_okhttp2_download_image"]



  Scenario: Check Network Event when clicking on OKHTTP2_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check excluding Network event, which its endpoint has "png", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpg", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpg"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpeg", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpeg"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "css", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.css"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "js", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.js"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "gif", when clicking on OKHTTP2_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//.gif"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    Then Check Number of Events Captured [1]



    ############################################ Retrofit ###############################

  Scenario: Check UIControl Event when clicking on Retrofit_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["event-description" "Pressed on Retrofit Download Image"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_retrofitOkhttp2_download_image"]



  Scenario: Check Network Event when clicking on Retrofit_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on/"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check excluding Network event, which its endpoint has "png", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png/"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpg", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpg"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpeg", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpeg"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "css", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.css"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "js", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.js"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "gif", when clicking on Retrofit_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//.gif"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    Then Check Number of Events Captured [1]


    #################################### URL connection##########################################
  Scenario: Check UIControl Event when clicking on URL_Connection_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["event-description" "Pressed on URL Connection Download Image"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_urlconnection_download_image"]



  Scenario: Check Network Event when clicking on URL_Connection_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png/"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check excluding Network event, which its endpoint has "png", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpg", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpg"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpeg", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpeg"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "css", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.css"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "js", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.js"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "gif", when clicking on URL_Connection_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//.gif"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    Then Check Number of Events Captured [1]

###################################### volley #####################################
  Scenario: Check UIControl Event when clicking on Volley_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["event-description" "Pressed on Volly Download Image"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["UIControl" "MaterialButton:btn_volly_download_image"]




  Scenario: Check Network Event when clicking on Volley_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png/"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Pause Time "3000" ms
    When Capture Android Native Events

    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE"] for event ["Network" "GET"]
    Then Validate Android Element ["page-name" "MainActivity"] for event ["Network" "GET"]
    Then Validate Android Element ["subpage-name" "com.vodafone.smapi.test.ImageExclusion"] for event ["Network" "GET"]
    Then Validate Android Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-transaction-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-timestamp" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-session-id" "SMAPI_Presence"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-trace-tid" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-user-id" "NA"] for event ["Network" "GET"]
    Then Validate Android Element ["x-vf-net-band" "NA"] for event ["Network" "GET"]



  Scenario: Check excluding Network event, which its endpoint has "png", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpg", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpg"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "jpeg", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.jpeg"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "css", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.css"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "js", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.js"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]

  Scenario: Check excluding Network event, which its endpoint has "gif", when clicking on Volley_Download_Image buttonn
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//.gif"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    Then Check Number of Events Captured [1]
