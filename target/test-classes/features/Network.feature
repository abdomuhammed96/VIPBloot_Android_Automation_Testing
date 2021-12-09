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
    Then No Events Captured

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
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

  Scenario: Check Google.com Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Google.com"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

#  Scenario: Check VF_PRE settings API Network Events when Netw on
#    Given User opens App
#    When Capture Events;
#    When Switch Network ON-OFF
#    When Scroll and click "VF_PRE settings API"
#    Then Pause Time "5000" ms
#    When Capture Events;
#    Then Capture And Compare Parameter ["event-type" "Network" 0]
#    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
#    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
#    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
#    Then Capture And Compare Parameter ["event-element" "GET" 0]
#    Then Capture And Compare Parameter ["page-name" "Main" 0]

  Scenario: Check Postman Echo Example Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Postman Echo Example"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

  Scenario: Check Slow request delay 10 secs Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "Slow request delay 10 secs"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

  Scenario: Check [Axios] Postman Echo Example Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "[Axios] Postman Echo Example"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]

  Scenario: Check [Axios] Custom Network Logger Network Events when Netw on
    Given User opens App
    When Capture Events;
    When Switch Network ON-OFF
    When Scroll and click "[Axios] Custom Network Logger"
    Then Pause Time "8000" ms
    When Capture Events;
    Then Capture And Compare Parameter ["event-type" "Network" 0]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 0]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 0]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 0]
    Then Capture And Compare Parameter ["event-element" "GET" 0]
    Then Capture And Compare Parameter ["page-name" "Main" 0]
    Then Capture And Compare Parameter ["event-type" "Network" 1]
    Then Capture And Compare Parameter ["device-orientation" "Portrait" 1]
    Then Capture And Compare Parameter ["x-vf-net-type" "WiFi" 1]
    Then Capture And Compare Parameter ["x-vf-app-state" "Foreground" 1]
    Then Capture And Compare Parameter ["event-element" "GET" 1]
    Then Capture And Compare Parameter ["page-name" "Main" 1]