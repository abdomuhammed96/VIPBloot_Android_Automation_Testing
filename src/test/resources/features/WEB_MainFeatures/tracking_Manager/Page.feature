Feature: Check About Page

  Scenario: Check Third Page Loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 2]

  Scenario: Check Fourth Page dom loaded Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 3]

  Scenario: Check Fifth Navigation page Event while SignUp Page Loading
    Then Click on ["SignUp"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | SIGNUP-http://localhost:3000/signup.html" 4]

  Scenario: Check Third Page Loaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 2]

  Scenario: Check Fourth Page dom Loaded Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 3]

  Scenario: Check Fifth Navigation page Event while Pricing Page Loading
    Then Click on ["Pricing"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "Pricing - BootsApp-http://localhost:3000/pricing.html" 4]

  Scenario: Check 3rd Page-load events while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 2]

  Scenario: Check 4th Page-dom-loaded event while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 3]

  Scenario: Check 5th Page-dom-loaded event while home page loading
    Then Pause Time "3000" ms
    When Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 4]

  Scenario: Check Soft Navigation page event when clicking on "MSISDN" button
    When Click on ["Third MSISDN button"]
    Then Pause Time "3000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 6]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/1234567890" 6]

  Scenario: Check Soft Navigation page event when clicking on "NOT_MSISDN" button
    When Click on ["the fourth MSISDN button"]
    Then Pause Time "3000" ms
    And Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 6]
    Then Check Presence of WEB Element ["event-description" 6]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 6]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/#/12345NOT67890" 6]

  Scenario: Check Third page Event When Click on About
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 2]

  Scenario: Check Fourth page Event When Click on About
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 3]

  Scenario: Check Fifth page Event When Click on About
    Then Click on ["About"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 4]

  Scenario: Check Third Page Loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Check Presence of WEB Element ["event-description" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 2]

  Scenario: Check Fourth Page dom loaded Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Check Presence of WEB Element ["event-description" 3]
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 3]

  Scenario: Check Fifth Navigation page Event while Login Page Loading
    Then Click on ["Login"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Login-http://localhost:3000/login.html" 4]