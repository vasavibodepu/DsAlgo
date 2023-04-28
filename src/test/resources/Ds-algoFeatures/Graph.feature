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
Feature: Graph
  I want to use this template for my feature file

  @tag1 SignIn Page
  Background: The user is logged in to DS Algo portal
  Scenario: 
  	Given: The user is on Signin page of DS Algo portal
    And The user click on login button
    Then The user should be directed to Home Page
    

  @tag2
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Graph Data Structure page
    Given The user is on the Home Page
    When The user clicks the "graph" item from the drop down menu
    Then The user should be redirected to "Graph page"
    
    @tag3
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Graph page 
    Given The user is on the Graph Page
    When The user clicks Graph link on Graph page
    Then The user should be redirected to "Graph" on Graph page
    

		@tag4
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user should be directed to editor page with run button to test python code
    Given The user navigates to Graph on Graph page
    When The user clicks on "Tryhere" link
    Then The user should be directed to "Editor page" with "Run button"
    
    @tag5
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in Editor for Graph page
    Given The user is in a page having an "Editor" with a "Run button" to test
    When The user enters valid python code in Editor from sheet "<Sheetname>" and "<RowNumber>"
    And  The user clicks on "run button"
    Then The user is presented with the "result" after run button is clicked
    
    Examples: |Sheetname   |RowNumber| 
    					| pythonCode |         0 |
    
 		@tag6
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for invalid code in Editor for Graph page
    Given The user is in a page having an "Editor" with a "Run button" to test
    When The user enters invalid python code in Editor from sheet "<Sheetname>" and "<RowNumber>" 
    And  The user clicks on "run button"
    Then The user gets an error message "SyntaxError: bad input on line 1"
    Then The user should click on "ok" to go back to "graph" page
    
    Examples: |Sheetname   |RowNumber| 
    					| pythonCode |      1  |
    
   
   @tag7
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "graph page" and click on "Graph Representations link"
    Given The user in editor page and navigates to the "graph page"
    When The user clicks on "Graph Representations link"
    Then The user should be redirected to "Graph Representations" page
    
    @tag8
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user should be directed to "editor page" with "run button" to test python code 
    Given The user is in "Graph Representations"  page
    When The user clicks on "Tryhere" link on graph representations page
    Then The user navigates to "Editor page" with "Run button"
    
    
    @tag9
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in Editor for Graph Representations page
    Given The user is in a page having an Editor with a Run button to test
    When The user enters valid python code in Editor from sheet "<Sheetname>" and <RowNumber>
    And  The user should click on "run button"
    Then The user is presented with the result after run button is clicked
    
    Examples: |Sheetname|RowNumber| 
    					| pythonCode |         0 |
    					
     @tag10
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for invalid code in Editor for Graph Representations page
    Given The user is in a page having an Editor with a Run button to test
    When The user enters invalid python code in Editor from sheet "<Sheetname>" and <RowNumber> 
    And   The user should click on "run button"
    Then The user gets an error message "SyntaxError: bad input on line 1"
    Then The user should click on "ok" to go back to "graph" page
    Examples: |Sheetname|RowNumber| 
    					| pythonCode |         1 |
    
    @tag11
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to graph representations page and click on Practice Questions
    Given The user is in Editor page and navigates to graph representations page
    When The user clicks on Practice Questions in graph representations page
    Then The user is directed to graph Practice page
    
    
    