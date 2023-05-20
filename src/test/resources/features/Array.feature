

Feature: User navigating through all the features on Array page in Dsalgo portal 

@tag1
Scenario: User logged into DsAgo portal
    Given user is on sign in page
    When The user enter valid username "Numpysdet108" and password "VP108AK@08"
    Then logged in succesfully
  

  @tag2 
  Scenario: The user is able to navigate to "ARRAY" Data Structure Page
    Given The user is on the Home page after logged in
    When The user clicked on Array Get Started button
    Then The user redirected to "ARRAY" Data Structure Page


	@tag3 
  Scenario: The user is able to navigate to Arrays in Python Page
    Given The user is on the "Array page" after logged in
    When The user clicks "Arrays in Python" button
    Then The user redirected to "Arrays in Python" Page
    
  @tag4 
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Arrays in Python page
    Given The user is on the "Arrays in Python page" after logged in
    When The user clicks "Try Here" button
    Then The user should be redirected to a page having an tryEditor with a Run button to test
    
  @tag5 
  Scenario Outline: The user is able run code in tryEditor of Arrays in Python page
    Given The user is on Assessment page of Arrays in Python 
    When user enters valid python code in tryEditor from sheet print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
		Then The user should be presented with Run result
		
		
	@tag6 
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Arrays in Python page
    Given The user is on Assessment page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo"and "<1>"
		And The user clicks on run button
    Then The user should get error message"SyntaxError: bad input on line 1"
    Then The user should Press"ok"button
 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
    
  @tag7 
  Scenario: The user is able to navigate to Arrays Using List page
    Given The user is on Array Page
    When The user should click "Arrays Using List" button
    Then The user should be redirected to "Arrays Using List" page
    
  @tag8 
  Scenario: The user is able to navigate to a page having an tryEditor from Arrays Using List page
    Given The user is on the "Arrays Using List" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
   
  @tag9 
  Scenario Outline: The user is able run code in tryEditor for Arrays Using List page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor with valid credential 
		And The user clicks on run button
 		Then The user should be presented with Run result
   
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
    
  @tag10 
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Arrays Using List page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo" and "<1>"
    And The user clicks on run button
 		Then The user should get error message "SyntaxError: bad input on line 1"
 		Then Press "Ok" button
 		Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
   @tag11 
  Scenario Outline: The user is able to navigate to Basic Operations in Lists page
    Given The user should press "Back Arrow" button on top left corner to go back to "Array Page"
    Then The user should be in "Arrays Using List" Page
    And Again the user should press "Back Arrow" button on top left corner to go back to "Array Page"
		When The user comes to Array Page
    Then The user should click "Basic Operations in Lists" button
    Then The user should be redirected to "Basic Operations in Lists" page
    
    @tag12 
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Basic Operations in Lists page
    Given The user is on the "Basic Operations in Lists" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
   
     @tag13 
  Scenario Outline: The user is able run code in tryEditor for Basic Operations in Lists page
    Given The user is on the "Basic Operations in Lists" after logged in
    When The user enter valid python code in tryEditor from sheet "print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with Run result
 		
 	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
     @tag14 
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds-Algo" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with error message
 		Then Press "Ok" button

 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
    @tag15 
  Scenario Outline: The user is able to navigate to Applications of Array page
    Given The user is on the Home Page after logged in
    When The user clicks Array Get Started button
    And user should click Applications of Array button
    Then The user should be redirected to "Applications of Array" page
    
    @tag16 
  Scenario Outline: The user is able to navigate to a page having an tryEditor from Applications of Array page
    Given The user is on the "Applications of Array" after logged in
    When The user clicks "Try Here" button
 		Then The user should be redirected to a page having an tryEditor with a Run button to test
 		
 		@tag17 
  Scenario Outline: The user is able run code in tryEditor for Applications of Array page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheet "print "Welcome to Ds-Algo"" and "<1>"
		And The user clicks on run button
 		Then The user should be presented with Run result
 		
 		Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
 		
 		@tag18 
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Applications of Array page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "Welcome to Ds_Algo" and "<1>"
		And The user clicks on run button
 		Then The user should be get error message "SyntaxError: bad input on line 1"
 		
 		Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
  
 		
