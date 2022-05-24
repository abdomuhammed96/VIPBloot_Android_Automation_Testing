Feature: Check Main Page

  Scenario: Check First Event When Clicked on SubPage Main Page
    Then Click on ["Click on Fire SubPage"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "testelemen" 4]
    Then Validate WEB Element ["page-name" "testonPage" 4]
    Then Validate WEB Element ["subpage-name" "MainPage" 4]

  Scenario: Check Second Event When Clicked on SubPage Main Page
    Then Click on ["Click on Fire SubPage"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UIControl" 5]
    Then Check Presence of WEB Element ["event-description" 5]
    Then Validate WEB Element ["event-element" "BUTTON - submit" 5]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 5]

  Scenario: Check First Event When Clicked on SubPage Others
    Then Click on ["Click on Fire SubPage Others"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 4]
    Then Check Presence of WEB Element ["event-description" 4]
    Then Validate WEB Element ["event-element" "testelemen" 4]
    Then Validate WEB Element ["page-name" "testonPage" 4]
    Then Validate WEB Element ["subpage-name" "Others" 4]

  Scenario: Check Second Event When Clicked on SubPage Others
    Then Click on ["Click on Fire SubPage Others"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UIControl" 5]
    Then Validate WEB Element ["event-description" "Fire Event with sub Page Others" 5]
    Then Validate WEB Element ["event-element" "BUTTON - submit" 5]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 5]

  Scenario: Check Event When Clicked on Add Bug Report English
    Then Click on ["Add Bug English"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 0]
    Then Check Presence of WEB Element ["event-description" 0]
    Then Validate WEB Element ["event-element" "testelemen" 0]
    Then Validate WEB Element ["page-name" "testonPage" 0]
    Then Validate WEB Element ["event-type" "UIControl" 4]
    Then Validate WEB Element ["event-description" "Add Bug Report for English Language" 4]
    Then Validate WEB Element ["event-element" "BUTTON - submit" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 4]

  Scenario: Check Event When Clicked on Add Bug Report Arabic
    Then Click on ["Add Bug Arabic"]
    Then Pause Time "3000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 0]
    Then Check Presence of WEB Element ["event-description" 0]
    Then Validate WEB Element ["event-element" "testelemen" 0]
    Then Validate WEB Element ["page-name" "testonPage" 0]
    Then Validate WEB Element ["event-type" "UIControl" 4]
    Then Validate WEB Element ["event-description" "Add Bug Report for Arabic Language" 4]
    Then Validate WEB Element ["event-element" "BUTTON - submit" 4]
    Then Validate WEB Element ["page-name" "BootsApp | Home-http://localhost:3000/" 4]

