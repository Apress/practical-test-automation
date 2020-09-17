# File: customers/features/export_to_csv.feature
#
Feature: Export to CSV

  Scenario: Export standard CSV file for our customers
    Given the customers
      | name      | phone number |
      | John Woo  | 6972669700   |
      | Mary Foo  | 6972669701   |
      | Laura Bar | 6972669702   |
    When I request to export customer details
    Then I get the file "customers.csv" with the correct data
