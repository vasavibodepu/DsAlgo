#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag 
Feature: Data Structures
  I want to use this template for my feature file

  @tag1 Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario: 
    Given The user is on Signin page of DS Algo portal
    When  The user enter valid "Numpysdet108_1" and "VP108AK@08"
    And The user click on login button
    Then The user should get message "You are logged in"
    
  @tag3  Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Data Structure introduction page
    Given The user is on the "home page" after logged in
    When The user clicks the "Getting Started" button in Data Structure Page introduction Panel
    Then After click "get started" button user should get "Data Structure Introduction Page" 
    
     @tag4 Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Time Complexity page
    Given The user is on the "Data Structures Introduction" after logged in
    When The user clicks Time Complexity link
    Then The user should be redirected to "Time Complexity" page
    
     @tag5 Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Time Complexity page
    Given The user is on the "Time Complexity Page" after logged in
    When The user clicks "Try Here" button on "Time Complexity" page
    Then User should get "Try Editor Page"
    
    @tag6 Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able run code in tryEditor for Time Complexity page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheet "<Welcome>" and <1>
    And The user clicks on run button
    Then The user should get message Dialogue box "NameError: name 'welcome' is not defined on line 1"
    
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |


@tag7 Data Structure
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Time Complexity page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "<Welcome>" and <1>
    And The user clicks on run button
    Then  The user should be presented with error message
    
    
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

    
    #Examples: 
      #| name  | value | status  |
      #| name1 |     5 | success |
      #| name2 |     7 | Fail    |
