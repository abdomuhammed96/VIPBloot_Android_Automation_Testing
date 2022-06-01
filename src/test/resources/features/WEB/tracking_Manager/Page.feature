#  page-dom-loaded
#"event-description": "2.714 sec",
#"event-element": "page-dom-loaded",
#"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen"

#  page-loaded
#"event-description": "5.009 sec",
#"event-element": "page-loaded",
#"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen

#  Page View
#"event-description": [{"dns": 0,"duration": 0.008,"httpCode": "NA","redirect": 0,"request": 0,"response": 0,"ssl": 0,"start": 1.177,"tcp": 0,"type": "script","transferSize":123467"url": "https://assets-es.myvdf.aws.cps.vodafone.com/inline.bundle.js"}],
#"event-element": "Page View",
#"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/login"

#  Unloaded
#"event-description": "Unloaded",
#"event-element": "NA",
#"event-type": "Page",
#"page-name": "Mi Vodafone-https://m.vodafone.es/mves/ProductsAndServices/MainScreen"

Feature: Check About Page

  Scenario: Check Page Loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "4000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html"] for event ["Page" "page-loaded"]
    Then Validate WEB Element ["event-description" "SMAPI_Presence"] for event ["Page" "page-loaded"]

#    Then Validate WEB Element ["event-type" "Page" 2]
#    Then Check Presence of WEB Element ["event-description" 2]
#    Then Validate WEB Element ["event-element" "page-loaded" 2]
#    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 2]

  Scenario: Check Page dom loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 3]

  Scenario: Check Navigation page Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 4]

  Scenario: Check Stay Time Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "Stay Time" 5]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 5]

  Scenario: Check Page View Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "Page View" 6]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 6]

  Scenario: Check Unloaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 7]
    Then Validate WEB Element ["event-description" "Unloaded" 7]
    Then Validate WEB Element ["event-element" "NA" 7]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 7]

#    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Check Page Loaded Event while c Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 2]

  Scenario: Check Page dom Loaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 3]

  Scenario: Check Navigation page Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 4]

  Scenario: Check Stay Time Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "Stay Time" 5]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 5]

  Scenario: Check Page View Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "Page View" 6]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 6]

  Scenario: Check Unloaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 7]
    Then Validate WEB Element ["event-description" "Unloaded" 7]
    Then Validate WEB Element ["event-element" "NA" 7]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 7]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Chec Page-load events while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 2]

  Scenario: Check Page-dom-loaded event while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 3]

  Scenario: Check Page-dom-loaded event while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 4]

  Scenario: Check Stay Time Event while home Page Loading
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "Stay Time" 5]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 5]

  Scenario: Check Page View Event while home Page Loading
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "Page View" 6]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 6]

  Scenario: Check Unloaded Event while home Page Loading
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 7]
    Then Validate WEB Element ["event-description" "Unloaded" 7]
    Then Validate WEB Element ["event-element" "NA" 7]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 7]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

#  Scenario: Check Soft Navigation page event when clicking on "MSISDN" button
#    When Click on ["Third MSISDN button"]
#    Then Pause Time "3000" ms
#    And Capture WEB Events
#    Then Validate WEB Element ["event-type" "Page" 6]
#    Then Check Presence of WEB Element ["event-description" 6]
#    Then Validate WEB Element ["event-element" "soft-navigation" 6]
#    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/MASKEDMSISDN" 6]
#
#  Scenario: Check Soft Navigation page event when clicking on "NOT_MSISDN" button
#    When Click on ["the fourth MSISDN button"]
#    Then Pause Time "3000" ms
#    And Capture WEB Events
#    Then Validate WEB Element ["event-type" "Page" 6]
#    Then Check Presence of WEB Element ["event-description" 6]
#    Then Validate WEB Element ["event-element" "soft-navigation" 6]
#    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/12345NOT67890" 6]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Check Third page Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 2]

  Scenario: Check Fourth page Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 3]

  Scenario: Check Fifth page Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 4]

  Scenario: Check Stay Time Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "Stay Time" 5]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 5]

  Scenario: Check Page View Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "Page View" 6]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 6]

  Scenario: Check Unloaded Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 7]
    Then Validate WEB Element ["event-description" "Unloaded" 7]
    Then Validate WEB Element ["event-element" "NA" 7]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 7]

    #    ///////////////////////////////////////////////////////////////////////////////////////////////

  Scenario: Check Page Loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 2]

  Scenario: Check Page dom loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 3]

  Scenario: Check Navigation page Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 4]

  Scenario: Check Stay Time Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "Stay Time" 5]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 5]

  Scenario: Check Page View Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "Page View" 6]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 6]

  Scenario: Check Unloaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Open new Tab and close
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 7]
    Then Validate WEB Element ["event-description" "Unloaded" 7]
    Then Validate WEB Element ["event-element" "NA" 7]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 7]