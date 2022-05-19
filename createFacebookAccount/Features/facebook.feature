

Feature: create facebook account

  Scenario Outline: Verify the email cofirmation page afetr creating a new account
    Given user is on facebook homepage
    When user clicks on create new account button
    And user enters first name
    And user enters last name
    And user enters email
    And user reenters email
    And user selects "<month>"
    And user selects "<date>"
    And user selects "<year>"
    And user selects "<gender>"
    And user clicks on signup button
    
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
