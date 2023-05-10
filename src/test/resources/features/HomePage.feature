@tag
Feature: User is navigating all the features present in the Home Page of DsAlgo portal

  @gotoHomePage
  Scenario: Navigating to Homepage on Open DS-Algo Portal app
    Given The user navigates to DS Algo portal link "https://dsportalapp.herokuapp.com/"
    When The user clicks the Get started button
    Then user is redirected to Homepage
    
  @validateUserLogin 
      Scenario Outline: User is on Home page and click on dropdown without sign in
      Given The user is on Home page
      When  clicks on dropdown "<options>" without login
      Then gets warning message "You are not logged in"
      Examples: 
      | options         |
      | Arrays         |
      | Linkedlist     |
      | Stack          |
      | Queue          |
      | Tree           |
      | Graph          |
      
      
    @tag3
    Scenario Outline: User is on HomePage and click get Started link on Homepage without sign in
    Given The user is on Home page
    When   clicks on Get started link on HomePage "<options>" without log in
    Then The user get warning message "You are not logged in"
   Examples: 
      | options         |
      | data-structures-introduction |
      | array         |
      | linked-list     |
      | stack          |
      | queue          |
      | tree           |
      | graph          |

      
      #@tag4
      #Scenario: User navigating to Sign In page
      #Given The user is on Home page
      #When  user clicks sign in button
      #And  redirected to Sign in page
      #Then "Username" and "Password" should be Null
      
      @tag5
      Scenario: launch user Registration page
      Given The user is on Home page
      When  user clicks Register link
      Then user should be redirected to Registration page
      
      
      #@tag6
      #Scenario:  User Registration 
      #Given The user is on Home page
      #When  user clicks Register button
      #Then page Title should be "https://dsportalapp.herokuapp.com/register"
      #
      #
      
      
      
      
