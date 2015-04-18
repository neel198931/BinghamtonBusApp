Feature: Search direct Bus
    In order to search a bus
    A visitor
    Should enter source and destination coordinates
 
    Scenario: Finds direct bus
        Given I am on the home page
        And I fill in "longitude" with "123"
        And I fill in "latitude" with "456"
        And I fill in "destlongitude" with "173"
        And I fill in "destlatitude" with "506"
        When I press "Submit"
	Then I expect to see "Current Stop: Downtown"
	And I expect to see "Destination Stop: Resident"
        And I expect to see "LRS is arriving at 2:00:00"
