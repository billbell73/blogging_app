Feature: Create post

Background: 
Given I am a new, authenticated user

Scenario:
Given I am on the homepage
And I follow "Create Post"
And I fill in "Title" with "Weather"
And I fill in "Body" with "Cloudy, yo!"
And I press "Post"
Then I should see "Cloudy, yo!"
