Feature: Deleting a post

  In order to ...
  
  Scenario: Deleting a post
    Given the following posts:
      | author | title | description              |
      | MHS    | Foo   | Custom software strategy |
    When I go to the posts page
    And I follow "Destroy" for the post titled "Foo", but answer "No" to the prompt "Are you sure?"
    Then I should be on the posts page
    And I should see the post titled "Foo" listed
    
    When I go to the posts page
    And I follow "Destroy" for the post titled "Foo", but answer "Yes" to the prompt "Are you sure?"
    Then I should be on the posts page
    And I should not see the post titled "Foo" listed
