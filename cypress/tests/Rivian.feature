Feature: Rivian
  Background:
    Given I visit "https://rivian.com/"

  Scenario: When I visit R1T page
    When I click on "R1T" link
    Then I am redirected to "/r1t" page
    And I see "R1T" text
    And I see "A truck built for whatever you call a road. Your electric adventure awaits." text
    And I see "Starting at $67,500 with an EPA estimated range of 314 miles." text

  Scenario: When I visit R1S page
    When I click on "R1S" link
    Then I am redirected to "/r1s" page
    And I see "R1S" text
    And I see "Explore the places you love with the people you love. Grab your camera. It’s time to make some memories." text
    And I see "Starting at $70,000 with an EPA estimated range of 316 miles." text

  Scenario: When I visit Experience page
    When I click on "Experience" link
    Then I am redirected to "/experience" page
    And I see "Our ownership experience is designed to be seamless and intuitive, with benefits focused on the values we share." text
    And I see "Car buying made simple." text
    And I see "You can manage the entire purchase process on your phone or computer. If you ever have a question, your personal Rivian Guide is here to help. To ensure your happiness, you have 7 days or 1,000 miles to return your vehicle after it’s delivered.¹ Our goal is to make buying a Rivian easy and transparent." text

  Scenario: When I visit Fleet page
    When I click on "Fleet" link
    Then I am redirected to "/fleet" page
    And I see "Electrify your fleet" text
    And I see "Efficient, sustainable solutions for your business and the planet." text
    And I see "Rivian is developing vehicles, software, charging solutions and services designed to help increase uptime and lower operating costs while helping businesses achieve ambitious sustainability goals." text