#Author: daudzai.jawid@gmail.com
#Keywords Summary : Exam

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
    | userName 									| password 			| text  					|
    | standard_user2  					| secret_sauce 	| Epic sadface: Username and password do not match any user in this service |
    | locked_out_user2 					| secret_sauce 	| Epic sadface: Username and password do not match any user in this service |
    | problem_user2 						| secret_sauce	| Epic sadface: Username and password do not match any user in this service |
    | performance_glitch_user2 	| secret_sauce 	| Epic sadface: Username and password do not match any user in this service |
       
  @InvalidPasswords
  Scenario Outline:  Valid userName and Invalid password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of invalid password "<text>"

    Examples: 
    | userName 								| password 			| text  			|
    | standard_user  					| secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
    | locked_out_user 				| secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
    | problem_user 						| secret_sauce2	| Epic sadface: Username and password do not match any user in this service |
    | performance_glitch_user | secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
       
      
      
  @InvalidCredintials
  Scenario Outline: Invalid userName and Invalid password login 
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees text of invalid credintials "<text>"

    Examples: 
    | userName 								 | password 		 | text  			|
    | standard_user2 					 | secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
    | locked_out_user2 				 | secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
    | problem_user2 					 | secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
    | performance_glitch_user2 | secret_sauce2 | Epic sadface: Username and password do not match any user in this service |
       
   @EmptyUserName
   Scenario Outline: Empty userName and valid password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees error text for empty username "<text>"

    Examples: 
    | userName  | password 		 | text  															|
    |    				| secret_sauce | Epic sadface: Username is required |
    |   				| secret_sauce | Epic sadface: Username is required |
    |   				| secret_sauce | Epic sadface: Username is required |
    |  					| secret_sauce | Epic sadface: Username is required |
       
    
      
   @EmptyPassword
   Scenario Outline: Valid userName and empty password login
    Given user enters "<userName>" and "<password>"
    When user clicks on login button
    Then user sees error text for empty password "<text>"

    Examples: 
    | userName 								| password  | text 															 |
    | standard_user 				  |      			| Epic sadface: Password is required |
    | locked_out_user 				|     		  | Epic sadface: Password is required |
    | problem_user 						|    				| Epic sadface: Password is required |
    | performance_glitch_user |    			  | Epic sadface: Password is required |
       
  