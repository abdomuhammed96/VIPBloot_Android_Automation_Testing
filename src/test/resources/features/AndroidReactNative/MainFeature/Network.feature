Feature: check Network event

  Scenario: Check Google.com Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "Google.com"
    When Capture Events;
    Then No Events Captured

  Scenario: Check VF_PRE settings API Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "VF_PRE settings API"
    When Capture Events;
    Then No Events Captured

  Scenario: Check Postman Echo Example Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "Postman Echo Example"
    When Capture Events;
    Then No Events Captured

  Scenario: Check Slow request delay 10 secs Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "Slow request delay 10 secs"
    When Capture Events;


  Scenario: Check [Axios] Postman Echo Example Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "[Axios] Postman Echo Example"
    When Capture Events;
    Then No Events Captured

  Scenario: Check [Axios] Custom Network Logger Network Events when Netw off
    Given User opens App
    When Capture Events;
    When Scroll and click "[Axios] Custom Network Logger"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

  Scenario: Check Google.com Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Google.com"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

#  Scenario: Check VF_PRE settings API Network Events when Netw on
#    Given User opens App
#    When Capture Events;
#    When Switch Network ON-OFF
#    When Scroll and click "VF_PRE settings API"
#    Then Pause Time "5000" ms
#    When Capture Events;
#    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
#    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
#    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
#    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
#    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
#    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

  Scenario: Check Postman Echo Example Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

  Scenario: Check Slow request delay 10 secs Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Slow request delay 10 secs"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

  Scenario: Check [Axios] Postman Echo Example Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "[Axios] Postman Echo Example"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]

  Scenario: Check [Axios] Custom Network Logger Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "[Axios] Custom Network Logger"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-type" "Network"] for event ["Network" "GET"]
    Then Validate Android RN Element ["device-orientation" "Portrait"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-net-type" "WiFi"] for event ["Network" "GET"]
    Then Validate Android RN Element ["x-vf-app-state" "Foreground"] for event ["Network" "GET"]
    Then Validate Android RN Element ["event-element" "GET"] for event ["Network" "GET"]
    Then Validate Android RN Element ["page-name" "Main"] for event ["Network" "GET"]