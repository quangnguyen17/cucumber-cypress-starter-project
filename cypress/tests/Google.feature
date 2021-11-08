Feature: Google
  Background:
    When I visit "https://www.google.com/"

  Scenario: I see Google logo and search bar
    Then I see Google logo
    And I see search bar