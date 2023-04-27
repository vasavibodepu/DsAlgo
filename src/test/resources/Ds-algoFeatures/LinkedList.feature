
@tag
Feature: Linked List
  I want to use this template for my feature file / Open HomePage

  @tag1 Sign in Page
  Background:The user is logged in to DS Algo portal
    Given The user is on Signin page of DS Algo portal
    When The user enter valid "Numpysdet84" and "sdet84batch"
    And The user click on login button
    Then The user redirected to homepage
    
  @tag2 Home
      Background: The user is logged in to DS Algo portal
      Scenario User navigated to "linked list" page
      Given:The user is in the Home page after logged in 
      When:  The user selecting linkedlist item from the drop down menu
      Then: The user should be directed to "Linked List " Page
  
      
    @tag3 Linked List 1
    Background: The user is logged in to DS Algo portal
    Scenario Outline: User navigated to "Introduction" page
    Given: The user is in the Linked List  page after logged in
    When: The user clicks "Introduction" link
    Then: The user should be directed to "Introduction" of Linked List Page
   
     
      
      @tag4 Linked List 2
      Background:The user is logged in to DS Algo portal
      Scenario Outline: User navigated to tryEditor page with Run button from Introduction page
      Given: The user is on the "Introduction" after logged in
      When:  The user clicks "Try Here" button in the "introduction" page
      Then: The user should be redirected to a page having an tryEditor with a Run button to test
      
      @tag5 Linked List 3
      
      Background: The user is logged in to DS Algo portal
      Scenario Outline: The user run the code in tryEditor with valid input for Introduction page
      Given:The user is in a try here page having  tryEditor with a Run button to test
      When:The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
      And:user click on Run button
      Then:The user should be presented with the Run output
      
   
      Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
      
      @tag6 Linked List 4
    Background: The user is logged in to DS Algo portal
    Scenario outline: The user getting error message with invalid python code for Introduction page	 																				
      Given:The user is in a try here page having  tryEditor with a Run button to test
      When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
      And:user click on Run button
      Then: The user should be presented with the Run output
       Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
      @tag7 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline: User navigated to "creating linked list" page
    Given: The user is in the Linked List  page after logged in
    When: The user clicks the "Creating a Linked List" button
    Then: The user should be directed to "Creating Linked List" Page
    
     
    @tag8 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline: User navigated to tryEditor page with Run button from Creating a Linked List page
    Given: The user is on the "Creating a Linked List" after logged in
    When: The user clicks "Try Here" button in the "creating linked list" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
    
    
   @tag9 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline: The user run the code in tryEditor with valid input for Creating a Linked List page
    Given: The user is in a try here page having  tryEditor with a Run button to test
    When: The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
    
    @tag10 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user getting error message with invalid python code for Creating a Linked List page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
    
    @tag11 Linked List
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to "Types of linked list" page
    Given:The user is in the Linked List  page after logged in
    When:The user clicks the "Types of Linked List" button
    Then:The user should be directed to "Types of Linked List" Page
    
    @tag12 Linked List
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to tryEditor page with Run button from Types of Linked List
    Given:The user is on the "Types of Linked list" after logged in
    When:The user clicks "Try Here" button in the "types of linked list" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
    
    @tag13 Linked List
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user run the code in tryEditor with valid input for Types of Linked List
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
    
    @tag14 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user getting error message with invalid python code for Types of Linked List
    Given: The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
    
    @tag15 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:user navigated to "Implementation linked list in python" page
    Given:The user is in the Linked List  page after logged in
    When:The user clicks the "Implement Linked List in Python" button
    Then:The user should be directed to "Implement Linked List in Python" Page
    
    @tag16 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to tryEditor page with Run button from Types of Linked List
    Given:The user is on the "Implement Linked List in Python" after logged in
    When:The user clicks "Try Here" button in the "implemented linked list in python" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
    
    @tag17 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user run the code in tryEditor with valid input for Implement Linked List in Python page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |"
    
    
    @tag18 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user getting error message with invalid python code for Implement Linked List in Python page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |"
    
    
     @tag19 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:user navigated to "Traversal" page
    Given:The user is in the Linked List  page after logged in
    When:The user clicks the "Traversal" button
    Then:The user should be directed to "Traversal" Page
    
    
    @tag20 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to tryEditor page with Run button from Traversal page
    Given:The user is on the "Traversal" after logged in
    When:The user clicks "Try Here" button in the "traversal" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
    
    @tag21 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user run the code in tryEditor with valid input for Traversal page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When: The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then: The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
    
    
    
     @tag21 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline: The user getting error message with invalid python code for Traversal page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
   
    @tag22 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:user navigated to "Insertion" page
    Given:The user is in the Linked List  page after logged in
    When:The user clicks the "Insertion" button
    Then:The user should be directed to "Insertion" Page
   
    @tag23 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to tryEditor page with Run button from Insertion page
    Given: The user is on the "Insertion" after logged in
    When:The user clicks "Try Here" button in the "Insertion" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
   
   
    @tag24 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user run the code in tryEditor with valid input for Insertion page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When: The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
     Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
   
   
    @tag25 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user getting error message with invalid python code for Insertion page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When:The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
    @tag26 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:user navigated to "Deletion" page
    Given:The user is in the Linked List  page after logged in
    When:The user clicks the "Deletion" button
    Then:The user should be directed to "Deletion" Page
   
   
    @tag27 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:User navigated to tryEditor page with Run button from Deletion page
    Given:The user is on the "Deletion" after logged in
    When:The user clicks "Try Here" button in the "Deletion" page
    Then:The user should be redirected to a page having an tryEditor with a Run button to test
   
   
    @tag28 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user run the code in tryEditor with valid input for Deletion page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When: The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
   Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
   
    @tag29 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user getting error message with invalid python code for Deletion page
    Given:The user is in a try here page having  tryEditor with a Run button to test
    When: The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And:user click on Run button
    Then:The user should be presented with the Run output
    " Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
   
    @tag30 Linked List 
    Background: The user is logged in to DS Algo portal
    Scenario outline:The user validating "Practice Questions" page
    Given:The user is in the Linked List page after logged in
    When:The user clicks Introduction link
    And:The user clicks on the Practice Questions
    Then:The user should be directed to Practice Questions of Linked List Page
   
   
       