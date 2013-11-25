Feature: User Accounts

Scenario: Not signed in
Given I am not authenticated
And I am on the homepage
When I follow "Create Post"
Then I should see "You need to sign in"

Scenario: Sign up
Given I am not authenticated
And I am on the homepage
When I follow "Sign up"
And I fill in "Email" with "w@g.com"
And I fill in "Password" with "bananana"
And I fill in "Password confirmation" with "bananana"
And I press "Sign up"
Then I should see "Welcome! You have signed up successfully"


