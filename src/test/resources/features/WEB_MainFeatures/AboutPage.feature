Feature: Check About Page

  Scenario: Check first Event while About Page Loading
    Given user open localHost:3000
    Then Click on About
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "NA" 0]
    Then Compare Parameter ["device-orientation" "Landscape" 0]
    Then Compare Parameter ["x-vf-net-band" "NA" 0]
    Then Compare Parameter ["x-vf-net-type" "NA" 0]
    Then Compare Parameter ["x-vf-trace-subject-region" "NA" 0]
    Then Compare Parameter ["event-type" "UICustom" 0]
    Then Compare Parameter ["event-element" "testelemen" 0]
    Then Compare Parameter ["event-description" "testdescription" 0]
    Then Compare Parameter ["page-name" "testonPage" 0]
    Then Compare Parameter ["subpage-name" "NA" 0]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 0]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 0]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 0]
    Then Compare Parameter ["x-vf-custom-test1" "teszt1customjson" 0]
    Then Compare Parameter ["x-vf-custom-test2" "teszt2customjson" 0]

  Scenario: Check Second Event When Click on About
    Given user open localHost:3000
    Then Click on About
    Then Capture Web Events
    #Then Compare Parameter ["event-description" "{\"Netperform\":\"7.0\",\"Billing\":\"4.0\",\"TermAndCondition\":\"3.0\"}" 1]
    Then Compare Parameter ["x-vf-user-id" "NA" 1]
    Then Compare Parameter ["device-orientation" "Landscape" 1]
    Then Compare Parameter ["x-vf-net-band" "NA" 1]
    Then Compare Parameter ["x-vf-net-type" "NA" 1]
    Then Compare Parameter ["x-vf-trace-subject-region" "NA" 1]
    Then Compare Parameter ["event-type" "UICustom" 1]
    Then Compare Parameter ["event-element" "Component" 1]
    Then Compare Parameter ["subpage-name" "NA" 1]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 1]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 1]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 1]


  Scenario: Check Third Event When Click on About
    Given user open localHost:3000
    Then Click on About
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "NA" 2]
    Then Compare Parameter ["device-orientation" "Landscape" 2]
    Then Compare Parameter ["x-vf-net-band" "NA" 2]
    Then Compare Parameter ["x-vf-net-type" "NA" 2]
    Then Compare Parameter ["x-vf-trace-subject-region" "NA" 2]
    Then Compare Parameter ["event-type" "Page" 2]
    Then Compare Parameter ["event-element" "page-loaded" 2]
    Then Compare Parameter ["page-name" "About - BootsApp-http://localhost:3000/about.html" 2]
    Then Compare Parameter ["subpage-name" "NA" 2]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 2]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 2]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 2]
    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 2]
    Then Compare Parameter ["seclib-client-version" "6.2.1" 2]
    Then Compare Parameter ["x-vf-trace-locale" "en-US" 2]
    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 2]
    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 2]
    Then Compare Parameter ["x-vf-trace-os-version" "NT 4.0" 2]
    Then Compare Parameter ["x-vf-trace-mcc" "NA" 2]
    Then Compare Parameter ["x-vf-trace-mnc" "NA" 2]
    Then Compare Parameter ["x-vf-trace-platform" "JS" 2]


  Scenario: Check Fourth Event When Click on About
    Given user open localHost:3000
    Then Click on About
    Then Capture Web Events
    Then Compare Parameter ["device-orientation" "Landscape" 3]
    Then Compare Parameter ["event-element" "page-dom-loaded" 3]
    Then Compare Parameter ["event-type" "Page" 3]
    Then Compare Parameter ["page-name" "About - BootsApp-http://localhost:3000/about.html" 3]
    Then Compare Parameter ["seclib-client-version" "6.2.1" 3]
    Then Compare Parameter ["subpage-name" "NA" 3]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 3]
    Then Compare Parameter ["x-vf-net-band" "NA" 3]
    Then Compare Parameter ["x-vf-net-type" "NA" 3]
    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 3]
    Then Compare Parameter ["x-vf-trace-locale" "en-US" 3]
    Then Compare Parameter ["x-vf-trace-mcc" "NA" 3]
    Then Compare Parameter ["x-vf-trace-mnc" "NA" 3]
    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 3]
    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 3]
    Then Compare Parameter ["x-vf-trace-os-version" "NT 4.0" 3]
    Then Compare Parameter ["x-vf-trace-platform" "JS" 3]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 3]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 3]
    Then Compare Parameter ["x-vf-trace-subject-region" "NA" 3]
    Then Compare Parameter ["x-vf-user-id" "NA" 3]


  Scenario: Check Fifth Event When Click on About
    Given user open localHost:3000
    Then Click on About
    Then Capture Web Events
    Then Compare Parameter ["device-orientation" "Landscape" 4]
    Then Compare Parameter ["event-element" "soft-navigation (asd)" 4]
    Then Compare Parameter ["event-type" "Page" 4]
    Then Compare Parameter ["page-name" "About - BootsApp-http://localhost:3000/about.html" 4]
    Then Compare Parameter ["x-vf-trace-application-name" "localhost" 4]
    Then Compare Parameter ["x-vf-trace-network-bearer" "4G" 4]
    Then Compare Parameter ["x-vf-trace-os-name" "Windows" 4]
    Then Compare Parameter ["x-vf-trace-os-version" "NT 4.0" 4]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 4]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 4]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 4]


  Scenario: Check Subscribe Events in About Page
    Given user open localHost:3000
    Then Click on About
    Then Click on Subscribe
    Then Capture Web Events
    Then Compare Parameter ["x-vf-user-id" "NA" 0]
    Then Compare Parameter ["device-orientation" "Landscape" 0]
    Then Compare Parameter ["x-vf-net-band" "NA" 0]
    Then Compare Parameter ["x-vf-net-type" "NA" 0]
    Then Compare Parameter ["x-vf-trace-subject-region" "NA" 0]
    Then Compare Parameter ["event-type" "UICustom" 0]
    Then Compare Parameter ["event-element" "testelemen" 0]
    Then Compare Parameter ["event-description" "testdescription" 0]
    Then Compare Parameter ["page-name" "testonPage" 0]
    Then Compare Parameter ["subpage-name" "NA" 0]
    Then Compare Parameter ["x-vf-trace-source" "js:com.vodafone.lib.sec.smapiweb" 0]
    Then Compare Parameter ["x-vf-trace-source-version" "smapi-web-test" 0]
    Then Compare Parameter ["x-vf-custom-authorization-id" "smapi-web-test" 0]
    Then Compare Parameter ["x-vf-custom-test1" "teszt1customjson" 0]
    Then Compare Parameter ["x-vf-custom-test2" "teszt2customjson" 0]