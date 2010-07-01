Feature: Listing posts
  
  In order to...
  
  Scenario: Listing posts
    Given the following posts:
      | author | title | description              |
      | MHS    | Foo   | Custom software strategy |
      | ABC    | Bar   | News corporation         |
    When I go to the posts page
    Then I should see those posts listed
    
    When I follow "Show" for the post titled "Foo"
    Then I should be on the page for the post titled "Foo"

    When I go to the posts page
    And I follow "Show" for the post titled "Bar"
    Then I should be on the page for the post titled "Bar"
      
      