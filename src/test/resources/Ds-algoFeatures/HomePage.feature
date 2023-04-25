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
Feature: Home Page
  I want to use this template for my feature file / Open HomePage

  @tag1 Home Page
  Scenario: Open DS-Algo Portal
    Given The user opens DS Algo portal link
    When The user clicks the "Get started" Button
    Then The user should be redirected to Homepage
    
  @tag2
      Scenario Outline: User is on Home page and click on dropdown without sign in
      Given The user is on Home page
      When  The user clicks on dropdown "<option>" without login
      Then The user get warning message "You are not logged in"
      
      Examples: 
      | option         |
      | Arrays         |
      | Linkedlist     |
      | Stack          |
      | Queue          |
      | Tree           |
      | Graph          |
      
      
    @tag3
    Scenario Outline: User is on HomePage and click get Started link on Homepage without sign in
    Given The user is on HomePage
    When The user clicks on "Get started" link on HomePage "<option>" without log in
    Then The user get warning message "you are not logged in"
   
      Examples: 
      | options         |
      | Datastructures |
      | Arrays         |
      | Linkedlist     |
      | Stack          |
      | Queue          |
      | Tree           |
      | Graph          |

      
      @tag4
      Scenario Outline: User is on Home page and click on sign in
      Given The user is on Home page
      When  The user clicks sign in
      Then The user should be redirected to Sign in page
      
      @tag5
      Scenario Outline: User is on login page 
      Given The user is on sign in page
      When  The user clicks "Sign-in"
      Then The user should be redirected to Register form
      
      
      @tag6
      Scenario Outline: User is on Home page and click on Register
      Given The user opens Home page
      When  The user clicks "Register"
      Then The user should be redirected to Register form
      
      
      
      
      
      
