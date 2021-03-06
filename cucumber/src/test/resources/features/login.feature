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
@login
Feature: Sign in
  As an employee of the company
  I want to login to the application

  Background: user navigates to application URL
    Given i am on the Login page URL ""
    Then i should see Login page

  @smoke
  Scenario: Sign in with valid credentials
    When I enter username as ""
    And click on continue button
    And I enter password as ""
    And click on Login button
    Then I should see application homepage
