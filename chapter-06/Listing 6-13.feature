# File: features/addition.feature
#
Feature: Adding

  Scenario: Add two numbers
    Given the input "2+2"
    When the calculator is run
    Then the output should be "4"

  Scenario: Add two more numbers
    Given the input "2+3"
    When the calculator is run
    Then the output should be "5"

  Scenario: Add two numbers again
    Given the input "22+50"
    When the calculator is run
    Then the output should be "72"

  Scenario: Add two numbers again and again
    Given the input "125+32"
    When the calculator is run
    Then the output should be "157"
