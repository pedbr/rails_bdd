Feature: Show articles
  As a publisher
  In order to display my articles
  I would like to be show articles

  Background:
    Given the following articles exists
    | title             | content                                |    
    | Learning Rails 5  | Excited about learning a new framework |
    When I visit the "landing" page

  Scenario: Landing page shows created articles
    Then I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"