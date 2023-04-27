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
Feature: Queue
  I want to use this template for my feature file

  @tag Signin page
   Background: The user is logged in to DS Algo portal
   Given: The user is on Signin page of DS Algo portal
   When: The user enter valid "Numpysdet84" and "sdet84batch" And The user click on login button
   And: The user click on login button
   Then: The user redirected to homepage
   
   @tag Home Page
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to Queue Data Structure Page
   Given: The user is in the Home page 
   When: The user clicks the Queue item from drop down menu
   Then: The user should be directed to Queue Data Structure Page
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to Implementation of Queue in Python link page
   Given: The user is in Queue Page
   When: The user clicks on Implementation of queue in Python link
   Then: The user should be directed to Implementation of queue  in Python Page
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user should be directed to editor page with run button to test python code
   Given: The user is in Implementation of queue  in Python Page
   When: The user clicks on Try here link
   Then: The user navigates to Editor page with Run button
   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to run code in Editor for Implementation of queue page
   Given: The user is in a page having an Editor with a Run Button to Test
   When: The user enters valid python code in Editor  from sheet "<Sheetname>" and <RowNumber> 
   And: clicks Run Button
   Then: The user is presented with the result after Run Button is clicked
   Examples: |Sheetname|RowNumber| | pythonCode |         0 |
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is presented with error message for invalid code in Editor for Implementation of queue page
   Given: The user is in a page having an Editor with a Run Button to Test
   When: The user enters invalid python code in Editor  from sheet "<Sheetname>" and <RowNumber>
   And: clicks Run Button
   Then: The user gets an Error Message
   Examples: | Sheetname  | RowNumber | | pythonCode |         1 |   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to queue page and click on Implementation using collections deque link
   Given: The user is in Editor Page and navigates to Queue Page
   When: The user clicks on Implementation using collections deque link
   Then: The user should be redirected to Implementation using collections deque page
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user should be directed to editor page with run button to test python code from Implementation using collections page
   Given: The user in implementation using collections page
   When: The user clicks on Tryhere link
   Then: The user navigates to Editor page with Run button   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to run code in Editor for Implementation using collections page
    Given: The user is in a page having an Editor with a Run button to test
    When: The user enters valid python code in Editor  from sheet "<Sheetname>" and <RowNumber>
   And: clicks Run Button
   Then: The user is presented with the result after run button is clicked
   Examples: |Sheetname|RowNumber| | pythonCode |         0 |
   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   
   @tag Queue
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   