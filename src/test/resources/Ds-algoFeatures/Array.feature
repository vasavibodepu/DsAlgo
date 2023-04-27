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
## (Comments)
#Sample Feature Definition Template
@tag 
Feature: Array
  I want to use this template for my feature file

  @tag1
  Background: The user is logged in to DS Algo portal
  Scenario: The user is logged in to DS Algo portal
    Given The user is on Signin page of DS Algo portal
    When The user enter valid username "Numpysdet108" and password "VP108AK@08"
    Then The user redirected to homepage
   

  @tag2 Home
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "ARRAY" Data Structure Page
    Given The user is on the "home page" after logged in
    When The user clicked on Array "Get Started" Button
    Then The user redirected to "ARRAY" Data Structure Page


	@tag3 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to "ARRAY" Data Structure Page
    Given The user is on the "Array page" after logged in
    When The user clicks "Arrays in Python" button
    Then The user redirected to "Arrays in Python" Page
    
  @tag4 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Arrays in Python page
    Given The user is on the "Arrays in Python page" after logged in
    When The user clicks "Try Here" button
    Then The user should be redirected to a page having an tryEditor with a Run button to test
    
  @tag5 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able run code in tryEditor of Arrays in Python page
    Given The user is in a page having an tryEditor with a Run button to test
    When "The user enter valid python code in tryEditor from sheet "print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
		Then "The user should be presented with Run result"
		
		
	@tag6 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Arrays in Python page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo"and "<1>"
		And The user clicks on run button
    Then The user should get error message"SyntaxError: bad input on line 1"
    Then The user should Press"ok"button
 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
    
  @tag7 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Arrays Using List page
    Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
    Then The user should be in "Arrays in Python" Page
    And Again the user should press "Back Arrow" button on top left corner to go back to "Array Page"
    When The user comes to Array Page
    Then The user should click "Arrays Using List" button
    Then The user should be redirected to "Arrays Using List" page
    
  @tag8 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Arrays Using List page
    Given The user is on the "Arrays Using List" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
   
  @tag9 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able run code in tryEditor for Arrays Using List page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor with valid credential 
		And The user clicks on run button
 		Then The user should be presented with Run result
   
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
    
  @tag10 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Arrays Using List page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo" and "<1>"
    And The user clicks on run button
 		Then The user should get error message "SyntaxError: bad input on line 1"
 		Then Press "Ok" button
 		
 	 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
   @tag11 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Basic Operations in Lists page
    Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
    Then The user should be in "Arrays Using List" Page
    And Again the user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user comes to Array Page
    Then The user should click "Basic Operations in Lists" button
    Then The user should be redirected to "Basic Operations in Lists" page
    
    @tag12 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Basic Operations in Lists page
    Given The user is on the "Basic Operations in Lists" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
   
     @tag13 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able run code in tryEditor for Basic Operations in Lists page
    Given The user is on the "Basic Operations in Lists" after logged in
    When The user enter valid python code in tryEditor from sheet "print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with Run result
 		
 	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
     @tag14 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with error message
 		Then Press "Ok" button

 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
    @tag15 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Applications of Array page
    Given The user is on the "Array page" after logged in
    When The user clicks Applications of Array link
    And Again the user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user comes to Array Page
    Then The user should click "Applications of Array" button
    Then The user should be redirected to "Applications of Array" page
    
    @tag16 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Applications of Array page
    Given The user is on the "Applications of Array" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
 		
 		@tag17 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able run code in tryEditor for Applications of Array page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheet "print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with Run result
 		
 		Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
 		
 		@tag18 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Applications of Array page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds_Algo" and "<1>"
		And The user clicks on run button
 		Then The user should be get error message "SyntaxError: bad input on line 1"
 		
 		Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
       @tag19 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Applications of Array page
    Given The user is on the "Array page" after logged in
    When The user clicks Applications of Array link
    And Again the user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user comes to Array Page
    Then The user should click "Practice Questions" button
    Then The user should be redirected to "Practice Questions" page
    
 		
    @tag20 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Practice page
    Given The user is on the "Array Page" after logged in
    When The user clicks Practice Questions link
		Then The user should be redirected to Practice page
		
		 @tag15 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Question page from Search the array link
    Given The user is on the "Practice page" after logged in
    When The user clicks the Search the array link
    Then The user should be redirected to question page contains an tryEditor with Run and Submit buttons
    
    @tag16 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor for Search the array link
    Given The user is on "Question" page of "Search the array" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and "<RowNumber>" for the question
		And The user clicks on run button
    Then The user should be presented with Run result
    
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         2 |
    
    
    @tag17 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to submit code in tryEditor for Search the array link
    Given The user is on "Question" page of "Search the array" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and "<RowNumber>" for the question
		And The user clicks on Submit button
    Then The User should get Error message "Error occurred during submission"
   
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         3 |
      
       #@tag18 Array
  #Background: The user is logged in to DS Algo portal
  #Scenario Outline:  The user is presented with error message for code with invalid syntax in tryEditor for Search the array link
    #Given The user is on "Question" page of "Search the array" after logged in
    #When The user enter valid python code in tryEditor from sheet "<Sheetname>" and "<RowNumber>" for the question
#		And The user clicks on run button
    #Then The user should be presented with error message 
    #
     #Examples: 
      #| Sheetname  | RowNumber |
      #| pythonCode |         1 |
      
      
       @tag19 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Question page from "Max Consecutive Ones" by clicking back arrow button from top left corner
  	Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user comes to Array Page
    Then The user should click "Max Consecutive Ones" button
    When The user should be redirected to "Max Consecutive Ones" page
    Then The user should be redirected to question page contains an tryEditor with Run and Submit buttons
   
     @tag20 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor for Max Consecutive Ones
  	Given The user is on "Question" page of "Max Consecutive Ones" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<4>" for the question
		And The user clicks on run button
    Then The user should be presented with Run result
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         4 |
    
    
    @tag21 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to submit code in tryEditor for Max Consecutive Ones
  	Given The user is on "Question" page of "Max Consecutive Ones" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<5>" for the question
		And The user clicks on Submit button
    Then The user should be presented with successful submission message
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         5 |
    
      
      @tag22 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for invalid code in tryEditor for Max Consecutive Ones
  	Given The user is on "Question" page of "Max Consecutive Ones" after logged in
		When The user enter python code with invalid syntax in tryEditor from sheet "<pythonCode>" and "<1>" for the question
		And The user clicks on Run button
    Then The user should be presented with error message "SyntaxError: EOF in multi-line statement on line 14"
    Then The user should click "Ok" after getting Error Message
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1|
    
    
     @tag23 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Question page from "Find Numbers with Even Number of Digits"
  	Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
  	When The user is on the "Practice page" after logged in
		Then The user clicks the "Find Numbers with Even Number of Digits" link
		Then The user should be redirected to question page contains an tryEditor with Run and Submit buttons
    
    
    
 		 @tag24 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor for Find Numbers with Even Number of Digits
  	Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<6>" for the question
		And The user clicks on run button
    Then The user should be presented with Run result
    Then The user should get "Text box" to input number 2 Times 
    And then user will get result of the code
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         6|
      
       #@tag25 Array
  #Background: The user is logged in to DS Algo portal
  #Scenario Outline: The user is able to submit code in tryEditor for Find Numbers with Even Number of Digits
  #	Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
  #	When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<7>" for the question
#		And The user clicks on Submit button
#		Then The user should be presented with successful submission message
#		
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         7 |
    
    
    #@tag26 Array
  #Background: The user is logged in to DS Algo portal
  #Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Find Numbers with Even Number of Digits
  #	Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
  #	When The user enter python code with invalid syntax in tryEditor from sheet "< pythonCode>" and "<1>" for the question
#		And The user clicks on run button
#		Then The user should be presented with error message
#		
#	Examples: 
      #| Sheetname  | RowNumber |
      #| pythonCode |         1 |
      
       @tag27 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to navigate to Question page from Squares of a Sorted Array
  	Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user clicks the Squares of a Sorted Array link
		Then The user should be redirected to question page contains an tryEditor with Run and Submit buttons
		
		 @tag28 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to run code in tryEditor for Squares of a Sorted Array
  	Given The user is on "Question" page of "Squares of a Sorted Array" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<8>" for the question
		And The user clicks on run button
    Then The user should be presented with Run result "[1, 4, 9, 16][0, 1, 9, 16, 100]"
    
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         8|
    
    @tag29 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is able to submit code in tryEditor for Squares of a Sorted Array
  	Given The user is on "Question" page of "Squares of a Sorted Array" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<9>" for the question
		And The user clicks on Submit button
    Then The user should be presented with successful submission message"No tests were collected"
    
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         9|
      
      @tag30 Array
  Background: The user is logged in to DS Algo portal
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Squares of a Sorted Array
  	Given The user is on "Question" page of "Squares of a Sorted Array" after logged in
		When The user enter valid python code in tryEditor from sheet "<pythonCode>" and "<1>" for the question
		And The user clicks on run button
    Then The user should be presented with error message"SyntaxError: bad input on line 1"
    Then The user press "ok" button
    
    
  Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1|
    
    
 		
