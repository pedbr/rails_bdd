Feature: Comment articles
  As a publisher
  In order to get feedback on my articles
  I would like to be able to comment articles

  Background:
    Given the following articles exists
    | title             | content                                |    
    | Learning Rails 5  | Excited about learning a new framework |
    When I visit the "landing" page
    And I click "Show" button

  Scenario: Visitor can comment articles
    Given I should see "Add a comment:"
    And I fill in "Commenter" with "John Doe"
    And I fill in "Body" with "Amazing article!"
    And I click "Create Comment" button
    Then I should see "Commenter: John Doe"
    And I should see "Comment: Amazing article!"