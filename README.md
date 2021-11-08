# cypress-cucumber-demo

- This demo project will show you how to write [Cypress](https://www.cypress.io/) E2E tests using [Cucumber](https://cucumber.io/) & [Typescript](https://www.typescriptlang.org/).
- It simplifies the traditional method of writing tests by breaking it down into 2 smaller parts.
  1. Defining your test in the a `.feature` file. A **feature** file is an entry point to the Cucumber tests. This is a file where you will describe your tests in Descriptive language (Like English) by using the [Gherkin Syntax](https://cucumber.io/docs/gherkin/). A **feature** file can contain a scenario or can contain many scenarios in a single **feature** file but it usually contains a list of scenarios.
  2. After your **feature** files have been created, you can now begin to write code here that turns the phrases in your `.feature` files into concrete actions.

## How to run project locally:

- Clone and `cd` into the repo, run `npm install` to install project's dependencies.
- To run the example tests:
  - With [Cypress](https://www.cypress.io/) GUI: `npm run cy`.
  - For CI/CD pipeline: `npm run cy:ci`.

## Folder Structure:

- Tests (here's where all your test **.feature** files should go): `cypress/tests`.
- Step implementations in code: `cypress/tests/common`.
- Cypress config file: `cypress.json`.

## How to write Cypress/Cucumber tests:

#### Example #1:

1. Write your first scenario
   - Create an empty file called [`Google.feature`](cypress/tests/Google.feature) in [`cypress/tests`](cypress/tests) folder with the following content:

```feature
Feature: Google
  Background:
    When I visit "https://www.google.com/"

  Scenario: I see a search bar and Google search button
    Then I see a search bar
    And I see a Google search button
```

- `Feature`: Name of the feature that want to test.
- `Background`: Where you can define all the actions before each scenario, similar to the `BeforeEach` hook in Cypress.
- `Scenario`: Equivalent to the `it` or `test` hook in Cypress. It defines all the subsequent tests in your `.feature` file.
- `Given`, `And`, `Then`: [Gherkin Keywords](https://cucumber.io/docs/gherkin/reference/#keywords) that indidate the beginning of a step, phrase, or an assertion.

2. Write your step definitions in code that turn your `.feature` files into actions
   - In `cypress/common` folder, this would be where all the code for parsing your `.feature` files should be.
   - Create a [`google.ts`](cypress/tests/common/google.ts) file in the folder with the following content:

```typescript
import { Then, And, Given } from 'cypress-cucumber-preprocessor/steps'

Given('I visit {string}', (url: string) => cy.visit(url))

And('I see a search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))

Then('I see a Google search button', () => cy.get(`input[value="Google Search"]`).should('be.visible'))
```

#### Example #2:

[`Rivian.feature`](cypress/tests/Rivian.feature)

```feature
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
```

[`rivian.ts`](cypress/tests/common/rivian.ts)

```typescript
import { And, When, Then } from 'cypress-cucumber-preprocessor/steps'

When('I click on {string} link', (text: string) => cy.get('[data-testid=nav-link]').contains(text).click())

Then('I am redirected to {string} page', (route: string) => cy.url().should('include', route))

And('I see {string} text', (text: string) => cy.contains(text))
```

## Learning Resources on Cucumber:

- [10 Minute Tutorial](https://cucumber.io/docs/guides/10-minute-tutorial/) on Cucumber.
- Learn more about the [Gherkin Syntax](https://cucumber.io/docs/gherkin/reference/).
- More on [Gherkin Keywords](https://cucumber.io/docs/gherkin/reference/#keywords).
