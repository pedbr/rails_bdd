Feature: Edit articles
  As a publisher
  In order to correct and update my articles
  I would like to be able to edit articles

  Background:
    Given the following articles exists
    | title             | content                                |    
    | Learning Rails 5  | Excited about learning a new framework |
    When I visit the "landing" page

  Scenario: Publisher can edit articles
    When I click "Edit" button
    Then I should see "Edit article"
    And I fill in "Title" with "Learning JavaScript"
    And I fill in "Content" with "JS is also awesome"
    And I click "Update Article" button
    Then I should see "Title: Learning JavaScript"
    And I should see "Text: JS is also awesome"