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
Feature: Register Page
  I want to use this template for my feature file / open Ds Algo Portal

  #@tag1 Ds-Algo Project
  #Scenario: User launch home page of an dsalgo project
    #Given The user opens DS Algo portal link
    #When The user clicks the "Get Started" button
    #Then The user should be redirected to homepage
    #And check more outcomes

  @tag2 Register
  Scenario Outline: The user is presented with error message for empty fields below Username textbox
    Given The user opens Register Page
    When The user clicks "Register" button with all fields empty
    Then It should display an error "Please fill out this field." below Username textbox
    
    @tag3 Register
  Scenario Outline: The user is presented with error message for empty fields below Password textbox
    Given The user opens Register Page
    When  The user clicks "Register" button after entering username with other fields empty
      | username     |
      | Numpy@sdet108_1 |
    Then It should display an error "Please fill out this field" below Password textbox
    
    @tag4 Register
  Scenario Outline: The user is presented with error message for empty fields below Password Confirmation textbox
    Given The user opens Register Page
    When  The user clicks "Register" button after entering "username" and "password" with Password Confirmation field empty
      | username     | password     |
      | Numpy@sdet108_1 | VP108AK@08 |
    Then It should display an error "Please fill out this field." below Password Confirmation textbox
    
    @tag5 Register
  Scenario Outline: The user is presented with error message for invalid username
    Given The user opens Register Page
    When  The user enters a "username" with characters other than Letters, digits and "@/./+/-/_"
      | username | password     | password confirmation |
      | &**&**&  | testpassword | testpassword          |
    Then It should display an error message "Please enter a valid username"
    
     @tag6 Register
  Scenario Outline: The user is presented with error message for username already exists
    Given The user is presented with error message for username already exists
    When  The user enters a valid existing "username" with "password" and "password confirmation"
      | username     | password  | password confirmation |
      | Numpy@sdet84_1 | RT56YUabc | RT56YUabc  |
    Then It should display an error message "Username already exists"
    
     @tag7 Register
  Scenario Outline: The user is presented with error message for password mismatch
    Given The user opens Register Page
    When  The user clicks "Register" button after entering valid "username" and different passwords in "password" and "password confirmation" fields
      | username     | password     | password confirmation |
      | Numpy@sdet108_1 | VP108AK@08 | VP108AK   | 
    Then It should display an error message "password_mismatch:The two password fields didn’t match."
    
    
     @tag8 Register
  Scenario Outline: The user is presented with error message for password with characters less than 8
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" with characters less than 8
      | username     | password | password confirmation |
      | Numpy@sdet108_1 | VP108AK  | VP108AK           |
    Then It should display an error message "Password should contain at least 8 characters"
    
    @tag9 Register
  Scenario Outline: The user is presented with error message for password with only numbers
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" with only numbers
      | username     | password | password confirmation |
      | Numpy@sdet108_1 | 12345678 |              12345678 |
    Then It should display an error message "Password can’t be entirely numeric."
    
    #@tag10 Register ---------------Do we need to give same password as the username????
  Scenario Outline: The user is presented with error message for password too similar to your other personal information
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" similar to username
      | username     | password   | password confirmation |
      | Numpy@sdet108_1 | testsdet84 | testsdet84          |
    Then It should display an error message "password can’t be too similar to your other personal information."
    
     @tag11 Register
  Scenario Outline: The user is presented with error message for commonly used password
    Given The user opens Register Page
    When  The user enters a valid "username" and commonly used password "password"
      | username     | password | password confirmation |
      | Numpy@sdet108_1 | Welcome1 | Welcome1          |
    Then It should display an error message "Password can’t be commonly used password"
    
    
    @tag12 Register
  Scenario Outline: The user is succesfully able to register 
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" and "password confirmation"
      | username     | password  | password confirmation |
      | Numpy@sdet108_1 | VP108AK@08 | VP108AK@08       |
    Then The user should be redirected to Homepage with the message "New Account Created. You are logged in as <username>"
    
    @tag13 Sign In
  Scenario Outline: The user is able to signin with registered credential
    Given The user is in the Sign in page
    When  The user enters a valid "<username>" and "<password>"
    Then "click login button to verify"
 
    
   Examples: 
      | username   | password  |
      | Numpy@sdet108_1 | VP108AK@08 |
