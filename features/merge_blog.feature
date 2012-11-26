Feature: Merge Articles
  As a blog administrator
  In order to keep the articles neat and simple, non-duplicate
  I want to merge articles talking about the same topic 

  Scenario: A non-admin cannot merge two articles
    Given I am on the Manage articles page
    Then I should see two articles with the same title of "Legacy Code"
    When I follow "Edit" on the first article
    Then I should be on the article edit page
    Then I should see "Legacy Code"
    Then I should not see "Merge Articles"

  Scenario: Successfully merge articles
    Given I am on the Manage articles page
    Then I should see two articles with the same title of "Hello World!"
    When I follow "Edit" on the first article
    Then I should be on the article edit page
    Then I should see "Hello World!"
    Then I should see "Merge Articles"
    When I fill in "Article ID" with "4"
    And I press "Merge"
    Then I should be on the Manage articles page
    And I should see only one article with title of "Hello World!"

