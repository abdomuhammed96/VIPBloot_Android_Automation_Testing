Feature: Check About Page

  Scenario: Check first Event while About Page Loading
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 0]
    Then Validate WEB Element ["event-element" "testelemen" 0]
    Then Validate WEB Element ["event-description" "testdescription" 0]
    Then Validate WEB Element ["page-name" "testonPage" 0]
    Then Validate WEB Element ["subpage-name" "testonSubpage" 0]
    Then Validate WEB Element ["device-orientation" "Landscape" 0]
    Then Validate WEB Element ["x-vf-net-band" "NA" 0]
    Then Validate WEB Element ["x-vf-net-type" "NA" 0]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA" 0]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 0]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test" 0]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson" 0]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson" 0]

  Scenario: Check Second Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Check Presence of WEB Element ["event-description" 1]
    Then Validate WEB Element ["event-type" "UICustom" 1]
    Then Validate WEB Element ["event-element" "Component" 1]
#    Then Validate WEB Element ["subpage-name" "NA" 1]
    Then Validate WEB Element ["device-orientation" "Landscape" 1]
    Then Validate WEB Element ["x-vf-net-band" "NA" 1]
    Then Validate WEB Element ["x-vf-net-type" "NA" 1]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA" 1]
#    Then Check Presence of WEB Element ["x-vf-trace-source" 1]
#    Then Check Presence of WEB Element ["x-vf-trace-source-version" 1]
#    Then Check Presence of WEB Elementt ["x-vf-custom-authorization-id" 1]


  Scenario: Check Third Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "Page" 2]
    Then Validate WEB Element ["event-element" "page-loaded" 2]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 2]
    Then Validate WEB Element ["subpage-name" "NA" 2]
    Then Validate WEB Element ["device-orientation" "Landscape" 2]
    Then Validate WEB Element ["x-vf-net-band" "NA" 2]
    Then Validate WEB Element ["x-vf-net-type" "NA" 2]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA" 2]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 2]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test" 2]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost" 2]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US" 2]
    Then Check Presence of WEB Element ["x-vf-trace-network-bearer" 2]
    Then Check Presence of WEB Element ["x-vf-trace-os-name" 2]
    Then Check Presence of WEB Element ["x-vf-trace-os-version" 2]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA" 2]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA" 2]
    Then Validate WEB Element ["x-vf-trace-platform" "JS" 2]


  Scenario: Check Fourth Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "page-dom-loaded" 3]
    Then Validate WEB Element ["event-type" "Page" 3]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 3]
    Then Validate WEB Element ["subpage-name" "NA" 3]
    Then Validate WEB Element ["device-orientation" "Landscape" 3]
    Then Validate WEB Element ["x-vf-net-band" "NA" 3]
    Then Validate WEB Element ["x-vf-net-type" "NA" 3]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost" 3]
    Then Validate WEB Element ["x-vf-trace-locale" "en-US" 3]
    Then Validate WEB Element ["x-vf-trace-mcc" "NA" 3]
    Then Validate WEB Element ["x-vf-trace-mnc" "NA" 3]
    Then Check Presence of WEB Element ["x-vf-trace-network-bearer" 3]
    Then Check Presence of WEB Element ["x-vf-trace-os-name" 3]
    Then Check Presence of WEB Element ["x-vf-trace-os-version" 3]
    Then Validate WEB Element ["x-vf-trace-platform" "JS" 3]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 3]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test" 3]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA" 3]

  Scenario: Check Fifth Event When Click on About
    Then Click on ["About"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-element" "soft-navigation (asd)" 4]
    Then Validate WEB Element ["event-type" "Page" 4]
    Then Validate WEB Element ["page-name" "About - BootsApp-http://localhost:3000/about.html" 4]
    Then Validate WEB Element ["device-orientation" "Landscape" 4]
    Then Validate WEB Element ["x-vf-trace-application-name" "localhost" 4]
    Then Validate WEB Element ["x-vf-trace-network-bearer" "4G" 4]
    Then Check Presence of WEB Element ["x-vf-trace-os-name" 4]
    Then Check Presence of WEB Element ["x-vf-trace-os-version" 4]
#    Then Check Presence of WEB Element ["x-vf-custom-authorization-id" 4]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 4]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test" 4]


  Scenario: Check Subscribe Events in About Page
    Then Click on ["About"]
    Then Click on ["Subscribe"]
    Then Pause Time "1000" ms
    Then Capture WEB Events
    Then Validate WEB Element ["event-type" "UICustom" 0]
    Then Validate WEB Element ["event-element" "testelemen" 0]
    Then Validate WEB Element ["event-description" "testdescription" 0]
    Then Validate WEB Element ["page-name" "testonPage" 0]
    Then Validate WEB Element ["subpage-name" "testonSubpage" 0]
    Then Validate WEB Element ["x-vf-user-id" "NA" 0]
    Then Validate WEB Element ["device-orientation" "Landscape" 0]
    Then Validate WEB Element ["x-vf-net-band" "NA" 0]
    Then Validate WEB Element ["x-vf-net-type" "NA" 0]
    Then Validate WEB Element ["x-vf-trace-subject-region" "NA" 0]
    Then Validate WEB Element ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 0]
    Then Validate WEB Element ["x-vf-trace-source-version" "smapi-web-test" 0]
#    Then Check Presence of WEB Element ["x-vf-custom-authorization-id" 0]
    Then Validate WEB Element ["x-vf-custom-test1" "teszt1customjson" 0]
    Then Validate WEB Element ["x-vf-custom-test2" "teszt2customjson" 0]