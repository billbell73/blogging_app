Feature: Delete posts

Background: 
Given there is a post with content "Zorba"
And I am on the homepage
And the post is being displayed

Scenario: Can destroy posts
When I follow "Destroy"
Then the post will be deleted

Scenario: Can delete posts
When I follow "Refined-delete"
And I press "Confirm Delete!"
Then the post will be deleted

