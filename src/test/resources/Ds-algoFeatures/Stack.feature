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
Feature: Stack
  I want to use this template for my feature file

 
    @tag1 Signin page
   Background: The user is logged in to DS Algo portal
   Given: The user is on Signin page of DS Algo portal
   When: The user enter valid "Numpysdet84" and "sdet84batch"
   Then: The user redirected to homepage
   
   @tag2	Home
   Background: The user is logged in to DS Algo portal
   Scenario Outline:The user is directed to "Stack" Page
   Given:The user is on the "home page" after logged in
   When:The user select stack item from the drop down menu
   Then:The user should be directed to "Stack" Page
    
   @tag2 Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline:The user is able to navigate to "Operations in Stack" page
   Given:The user is on the Stack page after logged in
   When: The user clicks on the Operations in Stack link
   Then: The user should then be directed to "Operations in Stack" Page
   
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to a page having an tryEditor
   Given:The user is on the "Operations in Stack page" after logged in
   When:The user clicks "Try Here" button in "stack" page
   Then: The user should be redirected to a page having an tryEditor with a Run button to test
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline:The user is able to run code in tryEditor
   Given: The user is in the Stack page after having an tryEditor with a Run button to test
   When: The user gets input from sheet "<Sheetname>" and <RowNumber>
   And: The user clicks on Run button after Entering valid python code in stack tryEditor
   Then: The user should be presented with Run output
   Examples: |Sheetname|RowNumber| | pythonCode |         0 |
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline:The user is able to get the error message for invalid syntax
   Given: The user is in stack page having an tryEditor with a Run button to test
   When: The user gets invalid input from sheet "<Sheetname>" and <RowNumber> 
   And: The user clicks on Run button after Entering invalid python code in stack tryEditor
   Then: The user should get the error message
   Examples: | Sheetname  | RowNumber | | pythonCode |         1 |

   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to "Implementation" Page
   Given: The user is on the Stack page after logged in
   When: The user clicks on the Implementation button
   Then: The user should then be directed to Implementation Page
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to Implementation page having an tryeditor
   Given: The user is on the "Stack Implementation page" after logged in
   When: The user clicks "Try Here" button in "stack Implementation" page
   Then: The user should be redirected to a page having an tryEditor with a Run button to test
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline:The user is able to run code in tryEditor
   Given: The user is in the Stack page after having an tryEditor with a Run button to test
   When: The user gets input from sheet "<Sheetname>" and <RowNumber>
   And: The user clicks on Run button after Entering valid python code in stack tryEditor
   Then: The user should be presented with Run output
   Examples: |Sheetname|RowNumber| | pythonCode |         0 |
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to get the error message for invalid syntax
   Given: The user is in stack page having an tryEditor with a Run button to test
   When: The user gets invalid input from sheet "<Sheetname>" and <RowNumber> 
   And: The user clicks on Run button after Entering invalid python code in stack tryEditor
   Then: The user should get the error message
   "Examples: | Sheetname  | RowNumber | | pythonCode |         1 |
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to "Applications" in stack Page
   Given: The user is on the "Stackpage" after logged in
   When: The user clicks on the Applications button
   Then: The user should be directed to Applications Page
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to Applications page having an tryEditor
   Given: The user is on the "Applications stack page" after logged in
   When: The user clicks "Try Here" button in "stack Applications" page
   Then: The user should be redirected to a page having an tryEditor with a Run button to test
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to run code in tryEditor
   Given: The user is in the Stack page after having an tryEditor with a Run button to test
   When: The user gets input from sheet "<Sheetname>" and <RowNumber>
   And: The user clicks on Run button after Entering valid python code in stack tryEditor
   Then: The user should be presented with Run output
   Examples: |Sheetname|RowNumber| | pythonCode |         0 |
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to get the error message for invalid syntax
   Given: The user is in stack page having an tryEditor with a Run button to test
   When: The user gets invalid input from sheet "<Sheetname>" and <RowNumber> 
   And: The user clicks on Run button after Entering invalid python code in stack tryEditor
   Then: The user should get the error message
   Examples: | Sheetname  | RowNumber | | pythonCode |         1 |
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline: The user is able to navigate to "Practice Questions" in stack Page
   Given: The user is on the "Stack page" after logged in
   When: The user clicks on the Practice Questions button
   Then: The user should be redirected to Practice Questions page
   
   @tag Stack
   Background: The user is logged in to DS Algo portal
   Scenario Outline:
   Given:
   When:
   And:
   Then:
   
   