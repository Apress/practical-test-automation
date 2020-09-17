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
