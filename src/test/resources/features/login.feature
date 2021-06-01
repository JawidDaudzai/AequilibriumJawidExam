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
@smokeTest
Feature: Login functionality

  @ValidUsers
  Scenario Outline: Valid userName and valid password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of "<text>"

    Examples: 
  | userName 								| password		 | text  		|
  | standard_user			  		| secret_sauce | PRODUCTS |
 	| locked_out_user				  | secret_sauce | PRODUCTS |
  | problem_user 						| secret_sauce | PRODUCTS |
  | performance_glitch_user | secret_sauce | PRODUCTS |


       @InvalidUsers
  Scenario Outline: Invalid userName and valid password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of invalid user "<text>"

    Examples: 
     | userName | password | text  |
      | standard_user2  |     secret_sauce | Epic sadface: Username and password do not match any user in this service |
      | locked_out_user2 |     secret_sauce | Epic sadface: Username and password do not match any user in this service |
     | problem_user2 |   secret_sauce|   Epic sadface: Username and password do not match any user in this service  |
       | performance_glitch_user2 |   secret_sauce | Epic sadface: Username and password do not match any user in this service   |
       
         @InvalidPasswords
  Scenario Outline:  Valid userName and Invalid password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of invalid password "<text>"

    Examples: 
     | userName | password | text  |
      | standard_user  |     secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
      | locked_out_user |     secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
     | problem_user |   secret_sauce2|   Epic sadface: Username and password do not match any user in this service  |
       | performance_glitch_user |   secret_sauce2 | Epic sadface: Username and password do not match any user in this service   |
       
      
      
     @InvalidCredintials
  Scenario Outline: Invalid userName and Invalid password login 
       Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of invalid credintials "<text>"

    Examples: 
     | userName | password | text  |
      | standard_user2  |     secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
      | locked_out_user2 |     secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
     | problem_user2 |   secret_sauce2|   Epic sadface: Username and password do not match any user in this service  |
       | performance_glitch_user2 |   secret_sauce2 | Epic sadface: Username and password do not match any user in this service   |
       
      @EmptyUserName
        Scenario Outline: Empty userName and valid password login
      Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees error text for empty username "<text>"

    Examples: 
     | userName | password | text  |
      |    |     secret_sauce | Epic sadface: Username is required |
      |   |     secret_sauce | Epic sadface: Username is required |
     |   |   secret_sauce|   Epic sadface: Username is required  |
       |  |   secret_sauce | Epic sadface: Username is required   |
       
    
      
      @EmptyPassword
        Scenario Outline: Valid userName and empty password login
        Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees error text for empty password "<text>"

    Examples: 
     | userName | password | text  |
      | standard_user  |      | Epic sadface: Password is required |
      | locked_out_user |       | Epic sadface: Password is required |
     | problem_user |    |   Epic sadface: Password is required  |
       | performance_glitch_user |     | Epic sadface: Password is required   |
       
      #@Boundry
        #Scenario Outline: Boundry userName and empty password login
    #Given I want to write a step with <name>
    #When I check for the <value> in step
    #Then I verify the <status> in step
#
    #Examples: 
      #| name  | value | status  |
      #| name1 |     5 | success |
      #| name2 |     7 | Fail    |
      
      
      #
       #@Validuser
  #Scenario: Valid userName and valid password login
    #Given user enters "admin" and "Hum@nhrm123"
    #When user clicks on login button
    #Then "Welcome Admin" is succefully logged in
#
      #@InvalidUser
  #Scenario: Invalid userName and valid password login
     #Given user enters "admin2" and "Hum@nhrm123"
    #When user clicks on login button
    #Then user sees "Invalid credentials"