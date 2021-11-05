Feature: Fleet
  Background:
    When I visit Rivian "fleet" page

  Scenario Outline: I see <text> text
    Then I see "<text>" text

    Examples:
      | text                                                               |
      | Electrify your fleet                                               |
      | Efficient, sustainable solutions for your business and the planet. |

  Scenario Outline: I see <button> button
    Then I see '<selector>' button

    Examples:
      | button               | selector                            |
      | Hambuger Menu Button | .StyledHamburgerMenuButton--1jzuubo |