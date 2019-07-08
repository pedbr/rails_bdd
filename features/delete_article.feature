Feature: Delete articles
  As a publisher
  In order to remove articles
  I would like to be able to delete articles

  Background:
    Given the following articles exists
    | title             | content                                |    
    | Learning Rails 5  | Excited about learning a new framework |
    When I visit the "landing" page

  Scenario: Publisher can delete articles
    When I click "Delete" button
    Then I should not see "Edit article"
    And I should not see "Excited about learning a new framework"