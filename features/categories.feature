Feature: add and edit categories
  As a blog administrator
  In order add and edit blogging categories
  I want add and edit blogging categories 

  Scenario: A non-admin cannot merge two articles
    pending

  Scenario: Successfully add new categoreis
    Given I am on the Login page
    Then I should see "Login"
    When I fill in "login" with "admin"
    And I fill in "password" with "AYTLpn4"
    Then I should be on the "admin" page
    Then I should see "Dashboard"
    Then I should see "Categories"
    When I follow "Categories"
    Then I should be on the categories new page
    When I fill in "Name" with "buggy"
    Then I fill in "Keywords" with "bug"
    Then I fill in "Description" with "bugs in a buggy application"
    And I press "Save"
    Then I should see "Category was successfully saved"


