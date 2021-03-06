Feature: Update posts

Background: 
Given I am a new, authenticated user

Scenario: Text presented in form for editing
Given there is a post with content "Zorba"
And I am on the homepage
When I follow "Edit"
Then I should see "Zorba"

Scenario: 
Given there is a post with content "Zorba"
And I am on the homepage
And I follow "Edit"
And I fill in "Body" with "And also..."
When I press "Update"
Then I should see "And also..."