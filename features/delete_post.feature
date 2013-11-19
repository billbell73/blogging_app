Feature: Delete posts

Scenario: Text presented in form for editing
Given there is a post with content "Zorba"
And I am on the homepage
When I follow "Delete"
And I press  I should see "Zorba"

