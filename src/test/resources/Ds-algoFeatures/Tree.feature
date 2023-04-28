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
Feature: Tree
  I want to use this template for my feature file

  @tag1 SignIn page
  Background: The user is logged in to DS Algo portal
  Scenario: 
    Given The user is on Signin page of DS Algo portal
    When The user enter valid "Numpy@sdet108_1" and "VP108AK@08"
    Then The user redirected to homepage
    

  @tag2 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is directed to "Tree" Page
    Given The user is on the "home page" after logged in
    When The user select Tree item from the drop down menu
    Then The user should be directed to "Tree" Page
    
    @tag3 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "Overview of Trees" page
    Given The user is on the Tree page after logged in
    When The user clicks on the Overview of Trees link
    Then The user should then be directed to Overview of Trees Page
    

	@tag4 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor
    Given The user is on the "Overview of Trees" after logged in
    When The user clicks "Try Here" button in "Tree" page
    Then The user should be redirected to a page having an tryEditor with a Run button to test
    

	@tag5 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor
    Given The user is in trees page having an tryEditor with a Run button to test
    When The user gets input from sheet "<Sheetname>" and <RowNumber> in trees 
    And The user clicks on Run button after Entering valid python code in trees tryEditor
    Then The user should be presented with Run output for trees
    
    Examples: |Sheetname   |RowNumber| 
    					| pythonCode |     0		|
    
    
    @tag5 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to get the error message for invalid syantax
    Given The user is in trees page having an tryEditor with a Run button to test
    When The user gets invalid input from sheet "<Sheetname>" and <RowNumber> in trees  
    And The user clicks on Run button after Entering invalid python code in trees tryEditor
    Then The user should get the error message for trees
    
    Examples: | Sheetname  | RowNumber | 
    					| pythonCode |         1 |
    					
    @tag6 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "Terminologies" Page
  	Given The user should click "Back Arrow" on top of left corner to go back to the page
  	And The user should redirected to "Tree Page"
    When The user clicks Terminologies button
  	Then The user should be directed to Terminologies Page
    
   
	 @tag7 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor
  	Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets input from sheet "<Sheetname>" and <RowNumber> in trees
  	And The user clicks on Run button after Entering valid python code in trees tryEditor
  	Then The user should be presented with Run output for trees
  	
  	Examples: |Sheetname		|RowNumber|
  						| pythoncode  |   0     |
    
    @tag8 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to get the error message for invalid syantax
  	Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets invalid input from sheet "<Sheetname>" and <RowNumber> in trees 
  	And The user clicks on Run button after Entering invalid python code in trees tryEditor
  	Then The user should get the error message for trees "SyntaxError: EOF in multi-line statement on line 11"
  	Then The user should press "ok" button
  	
  	Examples: |Sheetname		|RowNumber|
  						| pythoncode  |   1    |
  						
  						
  	@tag9 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "Types of Trees" Page
  	Given The user should click "Back Arrow" on top of left corner
  	And The user should redirected to "Tree Page"
  	When The user clicks on the "Types of Trees" button
  	Then The user should be directed to "Types of Trees" Page
  	
  	Examples: |Sheetname		|RowNumber|
  						| pythoncode  |   0     |
    
    @tag10 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor
  	Given The user is on the "types of trees" after logged in
  	When The user clicks "Try Here" button in "tree" page
  	Then The user should be redirected to a page having an tryEditor with a Run button to test
  	
  	
     @tag11 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor
    Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets input from sheet "<Sheetname>" and <RowNumber> in trees 
  	And The user clicks on Run button after Entering valid python code in trees tryEditor
  	Then The user should be presented with Run output for trees
  	
  	Examples: |Sheetname		|RowNumber|
  						| pythoncode  |   0     |
  						
  		@tag11 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to get the error message for invalid syntax
    Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets invalid input from sheet "<Sheetname>" and <RowNumber> in trees 
  	And The user clicks on Run button after Entering invalid python code in trees tryEditor
  	Then The user should get the error message for trees "SyntaxError: bad input on line 1"
  	Then The user should press "ok" button
  	
  	Examples: |Sheetname		|RowNumber|
  						| pythoncode  |   1     |
  						
  		@tag12 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "Tree Traversals" Page
    Given The user is on the "Tree page" after logged in
  	When The user clicks Tree Traversals button
  	Then The user should be directed to Tree Traversals Page
  	
  	
  	@tag13 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor
    Given The user is on the "tree traversals" after logged in
  	When The user clicks "Try Here" button in "tree" page
  	Then The user should be redirected to a page having an tryEditor with a Run button to test
  	
  		@tag14 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor
    Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets input from sheet "<Sheetname>" and <RowNumber> in trees 
  	And The user clicks on Run button after Entering valid python code in trees tryEditor
  	Then The user should be presented with Run output for trees
  	
  	Examples: |Sheetname	 |RowNumber| 
  						| pythonCode |     0    |
  						
  		@tag15 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to get the error message for invalid syantax
    Given The user is in trees page having an tryEditor with a Run button to test
  	When The user gets invalid input from sheet "<Sheetname>" and <RowNumber> in trees 
  	And The user clicks on Run button after Entering invalid python code in trees tryEditor
  	Then The user should get the error message for trees "SyntaxError: bad input on line 1"
  	
  	Examples: |Sheetname	 |RowNumber| 
  						| pythonCode |     1   |
  	
  	
    
   