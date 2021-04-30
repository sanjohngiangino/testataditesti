Feature: User can manually add a song

Scenario: Add a song
    Given I am on Testataditesti home page
	When I follow "Add new song"
	Then I should be on the Create New Song Page
	When I fill in "Title" with "Dont Stop Me Now"
	And I press "Save Changes"
	Then I should be on the Testataditesti home page
	And I should see "Dont Stop Me Now"