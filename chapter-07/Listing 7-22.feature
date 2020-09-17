# File: features/booking_a_room.feature
#
Feature: Booking a Room
  Users should be able to book a room.
  The application should ask user the booking details and
  then return back the rooms available.

  Background:
  The table below describes the rooms available. The "number"
  column is the room number. The "accommodates" column is the
  maximum number of people that can stay in the room

    Given there are the following rooms in the hotel
      | number | accommodates |
      |      1 |            2 |
      |      2 |            2 |
      |      3 |            2 |
      |      4 |            2 |
      |      5 |            4 |
      |      6 |            4 |

  Scenario Outline: All the rooms are free and there are rooms on the capacity requested
    Given all the rooms are available
    When visitor provides the following booking details
      | check_in    | check_out   | guests   |
      | 23-Mar-2017 | 25-Mar-2017 | <guests> |
    Then visitor is provided with rooms "<rooms>"

    Examples:
      | guests | rooms |
      |      3 | 5, 6  |
