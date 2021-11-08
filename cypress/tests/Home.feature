Feature: Home
  Background:
    When I visit "https://rivian.com/"

  Scenario: I see the following text on Rivian Home page
    Then I see "INTRODUCING" text
    And I see "Forever" text
    And I see "Our contribution to the planet" text

  Scenario: I see the following buttons on Rivian Home page
    Then I see '.StyledContent--1t5q8k7 > [data-testid="Forever-Learn More-overlay-button"]' button
    And I see ".StyledHamburgerMenuButton--1jzuubo" button