Feature: Rivian
  Background:
    Given I visit "https://rivian.com/"

  Scenario: When I visit R1T page
    When I click on "R1T" link
    Then I am redirected to "/r1t" page
    And I see "R1T" text
    And I see "EPA estimated range of 314 miles" text
    And I see "Starting at $67,500" text

  Scenario: When I visit R1S page
    When I click on "R1S" link
    Then I am redirected to "/r1s" page
    And I see "R1S" text
    And I see "EPA estimated range of 316 miles" text
    And I see "Starting at $70,000" text

  Scenario: When I visit Gear Shop page
    When I click on "Gear Shop" link
    Then I am redirected to "/gear-shop" page
    And I see "All Gear" text

  Scenario: When I visit Fleet page
    When I click on "Fleet" link
    Then I am redirected to "/fleet" page
    And I see "Electrify your fleet" text
    And I see "Efficient, sustainable solutions for your business and the planet." text
    And I see "Rivian is developing vehicles, software, charging solutions and services designed to help increase uptime and lower operating costs while helping businesses achieve ambitious sustainability goals." text