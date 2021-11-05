Feature: Sign In
  Background:
    When I visit Rivian "account" page
    And I see "Sign In" text
    And The "Signin-email" input field is blank
    And The "Signin-password" input field is blank

  Scenario: I see validation errors if the input fields are empty
    When I click on "Signin-button-submit" button
    Then I see "Enter your email address." text
    And I see "Enter your password." text

  Scenario: I see "Enter your password." message if only email input field is filled
    When I type "test@rivian.com" in "Signin-email" input field
    When I click on "Signin-button-submit" button
    Then I see "Enter your password." text

  Scenario: I see "Enter your email address." message if only password input field is filled
    When I type "riviantestpw" in "Signin-password" input field
    When I click on "Signin-button-submit" button
    Then I see "Enter your email address." text