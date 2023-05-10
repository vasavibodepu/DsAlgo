
@tag
Feature: Register Page
Automating functionality of Registration Page


  @tag1 
  Scenario: User launch home page of an dsalgo project
    Given The user opens DS Algo portal link
    When clicked on "Get Started" button
    Then  user is redirected to homepage
    

  @tag2
  Scenario: The user is presented with error message for empty fields below Username textbox
    Given The user opens Register Page
    When The user clicks "Register" button with all fields empty
    Then It should display an error "Please fill out this field." below Username textbox
    
    @tag3Register
  Scenario Outline: The user is presented with error message for empty fields below Password textbox
    Given The user opens Register Page
    When  The user clicks "Register" button after entering username with other fields empty
    Then It should display an error "Please fill out this field" below Password textbox
    Examples: 
      | username     |
      | Numpy@sdet108_1 |
    
    @tag4Register
  Scenario Outline: The user is presented with error message for empty fields below Password Confirmation textbox
    Given The user opens Register Page
    When  The user clicks "Register" button after entering "username" and "password" with Password Confirmation field empty
    Then It should display an error "Please fill out this field." below Password Confirmation textbox
    Examples: 
      | username     | password     |
      | Numpy@sdet108_1 | VP108AK@08 |
    
    @tag5Register
  Scenario Outline: The user is presented with error message for invalid username
    Given The user opens Register Page
    When  The user enters a "username" with characters other than Letters, digits and "@/./+/-/_" 
    Then It should display an error message "Please enter a valid username"
    Examples: 
    | username | password     | password confirmation |
    | &**&**&  | testpassword | testpassword          |
     @tag6Register
  Scenario Outline: The user is presented with error message for username already exists
    Given The user is presented with error message for username already exists
    When  The user enters a valid existing "username" with "password" and "password confirmation"
    Then It should display an error message "Username already exists"
    Examples: 
    | username     | password  | password confirmation |
    | Numpy@sdet84_1 | RT56YUabc | RT56YUabc  |
    
     @tag7Register
  Scenario Outline: The user is presented with error message for password mismatch
    Given The user opens Register Page
    When The user clicks "Register" button after entering valid "username" and different passwords in "password" and "password confirmation" fields
    Then It should display an error message "password_mismatch:The two password fields didn’t match."
    Examples: 
    | username     | password     | password confirmation |
    | Numpy@sdet108_1 | VP108AK@08 | VP108AK   | 
    
     @tag8 
  Scenario Outline: The user is presented with error message for password with characters less than 8
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" with characters less than 8      
    Then It should display an error message "Password should contain at least 8 characters"
    Examples: 
    | username     | password | password confirmation |
      | Numpy@sdet108_1 | VP108AK  | VP108AK  | 
    
    @tag9
  Scenario Outline: The user is presented with error message for password with only numbers
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" with only numbers
   Then It should display an error message "Password can’t be entirely numeric."
   Examples: 
    | username     | password | password confirmation |
    | Numpy@sdet108_1 | 12345678 |              12345678 |
    
    
    @tag10 
  Scenario Outline: The user is presented with error message for password too similar to your other personal information
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" similar to username
    Then It should display an error message "password can’t be too similar to your other personal information."
    Examples: 
      | username     | password   | password confirmation |
      | Numpy@sdet108_1 | testsdet84 | testsdet84          |
    
     @tag11Register
  Scenario Outline: The user is presented with error message for commonly used password
    Given The user opens Register Page
    When  The user enters a valid "username" and commonly used password "password"
    Then It should display an error message "Password can’t be commonly used password"
    Examples: 
      | username     | password | password confirmation |
      | Numpy@sdet108_1 | Welcome1 | Welcome1          |
    
    @tag12Register
  Scenario Outline: The user is succesfully able to register 
    Given The user opens Register Page
    When  The user enters a valid "username" and "password" and "password confirmation"
    Then The user should be redirected to Homepage with the message "New Account Created. You are logged in as <username>"
    Examples: 
      | username     | password  | password confirmation |
      | Numpy@sdet108_1 | VP108AK@08 | VP108AK@08       |
    
    @tag13SignIn
  Scenario Outline: The user is able to signin with registered credential
    Given The user is in the Sign in page
    When  The user enters a valid "<username>" and "<password>"
    Then "click login button to verify"
   Examples: 
      | username   | password  |
      | Numpy@sdet108_1 | VP108AK@08 |
