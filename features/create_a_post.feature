Feature: Create a post

  In order to ...
  
  Scenario: Creating a post
    Given I go to the posts page
    When I follow "New Post"
    Then I should see the ".new_post" popup
    
    When I fill in "Author" with "Mutually Human Software"
    And I fill in "Title" with "Foobar"
    And I fill in "Description" with "myth busters"
    And I press "Create"
    Then I should see "Post was successfully created"
    And I should be on the newly created post page
    And I should see the following post displayed:
      | author      | Mutually Human Software |
      | title       | Foobar                  |
      | description | myth busters            |
      
  Scenario: Checking title availability
    Given I go to the posts page
    And I follow "New Post"
    And I fill in "Title" with "Foobar"
    And I follow "Check title availability"
    Then I should be presented with the alert "Foobar"
    And I should see that the "Foobar" title is available
    
    When I fill in "Title" with "Barbaz"
    And I follow "Check title availability"
    Then I should be presented with the alert "Barbaz"
    And I should see that the "Barbaz" title is available

  Scenario: Closing the new post popup window
    Given I go to the posts page
    When I follow "New Post"
    Then I should see the "form.new_post" popup
    
    When I click the close link inside the popup
    Then I should no longer see the "form.new_post" popup
