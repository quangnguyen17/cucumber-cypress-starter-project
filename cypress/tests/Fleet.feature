Feature: Fleet
  Background:
    When I visit "https://rivian.com/fleet"

  Scenario: I see the following text on Rivian Fleet page
    Then I see "Electrify your fleet" text
    And I see "Efficient, sustainable solutions for your business and the planet." text

  Scenario: I see the following buttons on Rivian Fleet page
    Then I see ".StyledHamburgerMenuButton--1jzuubo" button