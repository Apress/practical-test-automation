# File: features/addition.feature
#
Feature: Adding

  Scenario Outline: Add two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      | input  | output |
      |    2+2 |      4 |
      |    2+3 |      5 |
      |  22+50 |     72 |
      | 125+32 |    157 |
