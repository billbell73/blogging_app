Feature: Comments

Background: 
Given I am a new, authenticated user

Scenario: Add comment

Given there is a post with content "clouds"
And I am on the homepage
When I follow "Add comment"
And I fill in "Body" with "Cracking post!" 
And I press "Submit Comment"
Then I should see "Cracking post!"
