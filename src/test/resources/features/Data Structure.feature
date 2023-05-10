 @tag
Feature: User navigating through the features on Data Structures page in Dsalgo portal  
  
  @tag1 
  Scenario Outline: User is logged in
    Given The user is on Signin page of DS Algo portal
    When  The user enter valid Username and Password
    And The user click on login button
    Then The user should get message "You are logged in"
    Examples:
    |username| Password |
    |Numpysdet108_1 | VP108AK@08 |
    
  @tag3  
  Scenario: The user is able to navigate to Data Structure introduction page
    Given The user is on the "home page" after logged in
    When The user clicks the "Get Started" button in Data Structure Page introduction Panel
    Then After click "get started" button user should get "Data Structure Introduction Page" 
    
     @tag4 
  Scenario: The user is able to navigate to Time Complexity page
    Given The user is on the "Data Structures Introduction" after logged in
    When The user clicks Time Complexity link
    Then The user should be redirected to "Time Complexity" page
    
     @tag5 
  Scenario: The user is able to navigate to a page having an tryEditor from Time Complexity page
    Given The user is on the "Time Complexity Page" after logged in
    When The user clicks "Try Here" button on "Time Complexity" page
    Then User should get "Try Editor Page"
    
    @tag6 
  Scenario Outline: The user is able run code in tryEditor for Time Complexity page
    Given The user is in a page having a tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheet "<Welcome>" and <1>
    And The user clicks on run button
    Then The user should get message Dialogue box "SyntaxError: bad input on line "
    
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |


@tag7 
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Time Complexity page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "<Welcome>" and <1>
    And The user clicks on run button
    Then  The user should be presented with error message
    
    
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

    
    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |

 

  

      