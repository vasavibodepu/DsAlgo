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
Feature: Sign-In Page
  I want to use this template for my feature file

  #@tag1 Sign-In
  #Scenario: Verifying Register link
    #When The user clicks on register link on signin page
    #Then The user redirected to Registration page from signin page
    #

  @tag2 Sign-In
  Scenario Outline: Title of your scenario outline
    Given  The user is on signin page
    When  The user enter invalid "<username>" and "<password>"
    Then click login button to verify
    Then User should get the message "Invalid Username and Password"
    
  Examples: 
      | username | password |
      | user     |          |
      |          | passowrd |
      |          |          |


 #@tag3 Sign-In
  #Scenario Outline: "User on login page and login with invalid and valid inputs from Excel"
    #Given  The user is on signin page
    #When  The user enter sheet "<Sheetname>" and <RowNumber>
    #Then click login button to verify
   #
  #Examples: 
      #| Sheetname | RowNumber |
      #| Sheet1    |         0 |
      #| Sheet1    |         1 |
      #| Sheet1    |         2 |
      #| Sheet1    |         3 |
      
      @tag4 Sign-In
  Scenario Outline:  Verifying signout link
    Given  The user is in the Home page with valid  log in
    When  The user clicks "Sign out" 
    Then The user should get the message "Logged out successfully"
    
    

    
    #Examples: 
      #| name  | value | status  |
      #| name1 |     5 | success |
      #| name2 |     7 | Fail    |
