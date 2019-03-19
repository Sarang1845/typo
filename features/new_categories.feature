
Feature: Create and edit categories
  As a blog administrator 
  In order to add movies to my Marvel Movies blog 
  I want to be able to create and edit categories

  Background:
      Given the blog is set up
      And I am logged into the admin panel
      

    Scenario: Going into categories page
      When I follow "Categories"
      Then I should see "Categories"
      
    Scenario: Going into categories page and creating a new category
      When I follow "Categories"
      And I fill in "Name" with "Iron Man 1"
      And I fill in "Description" with "Best Movie of all Time"
      And I press "Save"
      Then I should see "Iron Man 1" 
      And I should see "Best Movie of all Time"
      
    Scenario: Going into categories page, creating a new category and editing it
      When I follow "Categories"
      And I fill in "Name" with "Iron Man"
      And I press "Save"
      And I follow "Iron Man" 
      And I fill in "Description" with "It has three movies"
      And I press "Save"
      Then I should see "Iron Man"
      And I should see "It has three movies"
      

      
      
      
      
      
      
        
    