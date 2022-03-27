Feature: Google
  Background:
    When I visit "https://www.google.com/"

  Scenario: I see a search bar and Google search button
    Then I see a search bar
    And I see a Google search button