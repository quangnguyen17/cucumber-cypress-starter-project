Feature: Home
  Background:
    When I visit Rivian "/" page

  Scenario Outline: I see <text> text
    Then I see "<text>" text

    Examples:
      | text                            |
      | INTRODUCING                     |
      | Forever                         |
      | Our contribution to the planet. |

  Scenario Outline: I see <button> button
    Then I see '<selector>' button

    Examples:
      | button               | selector                                                                    |
      | Learn More           | .StyledContent--1t5q8k7 > [data-testid="Forever-Learn More-overlay-button"] |
      | Hambuger Menu Button | .StyledHamburgerMenuButton--1jzuubo                                         |