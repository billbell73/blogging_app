Feature: Voting


@javascript
Scenario: Upvote
	Given there is a post with content "clouds"
	And I am on the homepage
	When I press "▲"
	Then the post with content "clouds" should have 1 vote