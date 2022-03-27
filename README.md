# cypress-cucumber-starter-project

Starter project for UI end-to-end testing with Cypress and Cucumber using Typescript.

1. Write your tests as scenarios in the a `.feature` file. A `.feature` file is an entry point to the Cucumber tests. This is a file where you will describe your tests in Descriptive language (Like English) by using the [Gherkin Syntax](https://cucumber.io/docs/gherkin/). A **feature** file can contain a scenario or can contain many scenarios in a single **feature** file but it usually contains a list of scenarios.

2. After your `.feature` files have been created, you can now begin to write code here that turns the phrases in your `.feature` files into concrete actions.

## How to run project locally

- Clone and `cd` into the repo, run `npm install` to install project's dependencies.
- Type `npm run test` to run the example E2E tests, or `npm run test:ci` in context of the CI/CD pipeline.

## Folder Structure

- Tests (here's where all your test **.feature** files should go) `features` folder.
- Step implementation code should go in `step-definitions` folder.

## Examples of Cucumber E2E tests

#### Example #1

1. Write your first scenario
   - Create an empty file called [`Google.feature`](features/Google.feature) in [`features`](features) folder with the following content:

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
   - Create a [`index.ts`](step-definitions/index.ts) file in the folder with the following content:

```typescript
import { Given, And, Then } from 'cypress-cucumber-preprocessor/steps'

Given('I visit {string}', (url: string) => {
  cy.visit(url)
})

And('I see a search bar', () => {
  cy.get(`input[title="Search"]`).should('be.visible')
})

Then('I see a Google search button', () => {
  cy.get(`input[value="Google Search"]`).should('be.visible')
})
```

#### Example #2:

Create another file called [`Rivian.feature`](features/Rivian.feature) in the [`features`](features) folder with the content bellow:

```feature
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
```

By combining what we have above, update [`index.ts`](step-definitions/index.ts) file with the following to add a few additional step implementations for [`Rivian.feature`](tests/Rivian.feature) test:

```typescript
import { Given, And, Then, When } from 'cypress-cucumber-preprocessor/steps'

Given('I visit {string}', (url: string) => {
  cy.visit(url)
})

And('I see a search bar', () => {
  cy.get(`input[title="Search"]`).should('be.visible')
})

Then('I see a Google search button', () => {
  cy.get(`input[value="Google Search"]`).should('be.visible')
})

When('I click on {string} link', (text: string) => {
  cy.get('[data-testid=nav-link]').contains(text).click()
})

Then('I am redirected to {string} page', (route: string) => {
  cy.url().should('include', route)
})

And('I see {string} text', (text: string) => {
  cy.contains(text)
})
```

## Learning Resources on Cucumber:

- [10 Minute Tutorial](https://cucumber.io/docs/guides/10-minute-tutorial/) on Cucumber.
- Learn more about the [Gherkin Syntax](https://cucumber.io/docs/gherkin/reference/).
- More on [Gherkin Keywords](https://cucumber.io/docs/gherkin/reference/#keywords).
