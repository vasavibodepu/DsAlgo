@tag
Feature: Feature: User navigating through all the features on LinkedList page in Dsalgo portal 
 
 @tag1
Scenario: User logged into DsAgo portal
    Given user is on sign in page
    When The user enter valid username "Numpysdet108" and password "VP108AK@08"
    Then logged in succesfully
  @tag2 
  Scenario: The user is able to navigate to Linked LIst page
    Given The user is on the Linked List page
    When The user clicks Types of Linked List link
    Then The user should be redirected to Types of Linked List page
    
  @tag3 
  Scenario: The user is able to navigate to Try Editor page
    Given The user is on Types of Linked List page
    When The user clicks Try here button
    Then The user should be redirected to Assessment page
    
    