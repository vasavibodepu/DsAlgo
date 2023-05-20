 @tag
Feature: User navigating through all the features on Data Structures page in Dsalgo portal 

@tag1
Scenario: User logged into DsAgo portal
Given user is on sign in page
When the valid username and password are given
Then logged in succesfully
  
  @tag2 
  Scenario: The user is able to navigate to Time Complexity page
    Given The user is on the Data Structures Introduction page
    When The user clicks Time Complexity link
    Then The user should be redirected to Time Complexity page
    
     @tag3 
  Scenario: The user is able to navigate to tryEditor page from Time Complexity page
    Given The user is on the Time Complexity Page 
    When The user clicks Try Here button on Time Complexity page
    Then User should land on Try Editor Page
    
    @tag4 
  Scenario Outline:  Validate user input scenarios in tryEditor page for Time Complexity
    Given user is on a tryEditor page
    Then run all the testcases in the test data "<csvfile>"     
   Examples: 
      | csvfile |
      | src\test\resources\data\DsAlgoData.xlsx |

    
    
    
 

  

      