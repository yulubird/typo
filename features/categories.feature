Feature: add and edit categories
  As a blog administrator
  In order add and edit blogging categories
  I want add and edit blogging categories 
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add new categoreis
    Given I am on the admin page
    Then I should see "Dashboard"
    Then I should see "Categories"
    When I follow "Categories"
    Then I should be on the admin categories new page
    When I fill in "Name" with "buggy"
    Then I fill in "Keywords" with "bug"
    Then I fill in "Description" with "bugs in a buggy application"
    And I press "Save"
    Then I should see "Category was successfully saved"


