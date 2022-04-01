Feature: check Image Exclusion Feature

  Background: User Opens App and Capture Events
    When Capture Android Native Events
    When Click On Button ["NEXT"]
    When Capture Android Native Events
    When Click On Button ["ImageExclusionBtn"]
    When Capture Android Native Events

  Scenario: Check UIControl Event after clicking on "ImageExclusionBtn" button on Main Page
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_image_execlusion" 0]
    Then Check Element value ["event-description" "Pressed on Image Exclusion" 0]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 0]
    Then Check Element value is not null ["x-vf-trace-timestamp" 0]
    Then Check Element value is not null ["x-vf-trace-session-id" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.SecondFragment" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]


  Scenario: Check Page Event - Stay Time for Second Fragment on Main activity- after clicking on "ImageExclusionBtn"
  button on Main Page
    Then Check Element value ["event-type" "Page" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "Stay Time" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value is not null ["event-description" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.SecondFragment" 1]
    Then Check Element value ["x-vf-trace-tid" "NA" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]

  Scenario: Check Page Event - Load Time for ImageExclusionBtn Fragment on Main activity
  - after clicking on "ImageExclusionBtn" button on Main Page
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
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 2]

############################################ OKHTTP3_Download_Image #################################################

  Scenario: Check UIControl Event when clicking on OKHTTP3_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_okhttp3_download_image" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP3 DOWNLOAD IMAGE" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on OKHTTP3_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    Then Check No Network Events Captured
    Then Click On a Button On Image Exclusion Page ["OKHTTP3_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

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
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_okhttp2_download_image" 0]
    Then Check Element value ["event-description" "Pressed on OKHTTP2 DOWNLOAD IMAGE" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on OKHTTP2_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png"]
    Then Click On a Button On Image Exclusion Page ["OKHTTP2_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

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
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_retrofitOkhttp2_download_image" 0]
    Then Check Element value ["event-description" "Pressed on Retrofit Download Image" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on Retrofit_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on/"]
    Then Click On a Button On Image Exclusion Page ["Retrofit_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

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
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_urlconnection_download_image" 0]
    Then Check Element value ["event-description" "Pressed on URL Connection Download Image" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on URL_Connection_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png/"]
    Then Click On a Button On Image Exclusion Page ["URL_Connection_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

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
    When Capture Android Native Events
    Then Check Element value ["event-type" "UIControl" 0]
    Then Check Element value ["device-orientation" "Portrait" 0]
    Then Check Element value ["event-element" "MaterialButton:btn_volly_download_image" 0]
    Then Check Element value ["event-description" "Pressed on Volly Download Image" 0]
    Then Check Element value ["page-name" "MainActivity" 0]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 0]
    Then Check Element value ["x-vf-trace-tid" "NA" 0]
    Then Check Element value ["x-vf-user-id" "NA" 0]
    Then Check Element value ["x-vf-net-band" "NA" 0]

  Scenario: Check Network Event when clicking on Volley_Download_Image button
    When Set an image exclusion url value ["https://www.google.com/?safe=active&ssui=on//mm.png/"]
    Then Click On a Button On Image Exclusion Page ["Volley_Download_Image"]
    When Capture Android Native Events
    Then Check Element value ["event-type" "Network" 1]
    Then Check Element value ["device-orientation" "Portrait" 1]
    Then Check Element value ["event-element" "GET" 1]
    Then Check Element value ["page-name" "MainActivity" 1]
    Then Check Element value ["subpage-name" "com.vodafone.smapi.test.ImageExclusion" 1]
    Then Check Element value ["x-vf-user-id" "NA" 1]
    Then Check Element value ["x-vf-net-band" "NA" 1]
    Then Check Element value is not null ["x-vf-trace-tid" 1]
    Then Check Element value is not null ["x-vf-trace-transaction-id" 1]
    Then Check Element value is not null ["x-vf-trace-timestamp" 1]
    Then Check Element value is not null ["x-vf-trace-session-id" 1]

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
