Feature: Sign In
  Background:
    When I visit "https://rivian.com/account"
    And I see "Sign In" text
    Given "Signin-email" input field is blank
    And "Signin-password" input field is blank

  Scenario: I see validation errors if the input fields are empty
    When I click on "Signin-button-submit" button
    Then I see "Enter your email address." text
    And I see "Enter your password." text

  Scenario: I see "Enter your password." message if I only fill out the email field
    When I type "test@rivian.com" in "Signin-email" input field
    When I click on "Signin-button-submit" button
    Then I see "Enter your password." text

  Scenario: I see "Enter your email address." message if I only fill out the password field
    When I type "riviantestpw" in "Signin-password" input field
    When I click on "Signin-button-submit" button
    Then I see "Enter your email address." text