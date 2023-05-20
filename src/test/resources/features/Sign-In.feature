@tag
Feature: Signing in successfully into DsAlgo portal after registration

  @tag1 
  Scenario: launching sign in 
    When The user clicks on register link on signin page
    Then The user redirected to Registration page from signin page
    

  @tag2 
  Scenario Outline: Title of your scenario outline
    Given  The user is on signin page
    When  The user enter invalid "<username>" and "<password>"
    Then click login button to verify
    Then User should get the message "Invalid Username and Password"
    
  Examples: 
      | username | password |
      | user     |          |
      |          | passowrd |
      |          |          |


 @tag3
  Scenario Outline: User login with invalid and valid inputs from Excel
    Given  The user is on signin page
    When  The user enter sheet "<Sheetname>" and <RowNumber>
    Then click login button to verify
  Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         0 |
      | Sheet1    |         1 |
      | Sheet1    |         2 |
      | Sheet1    |         3 |
            
            
   @tag4
  Scenario Outline:  Verifying signout link
    Given  The user is in the Home page with valid  log in
    When  The user clicks "Sign out" 
    Then The user should get the message "Logged out successfully"
    
   