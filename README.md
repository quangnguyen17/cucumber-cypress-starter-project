# cypress-cucumber-demo

- This project will show you how to write [Cypress](https://www.cypress.io/) E2E tests using [Cucumber](https://cucumber.io/) & [Typescript](https://www.typescriptlang.org/).
- It simplifies the traditional method of writing tests by breaking it down into 2 smaller parts.
  1. Defining your test in the a `.feature` file. A **feature** file is an entry point to the Cucumber tests. This is a file where you will describe your tests in Descriptive language (Like English) by using the [Gherkin Syntax](https://cucumber.io/docs/gherkin/). A **feature** file can contain a scenario or can contain many scenarios in a single **feature** file but it usually contains a list of scenarios.
  2. After your **feature** files have been created, you can now begin to write code here that turns the phrases in your `.feature` files into concrete actions.

## How to run project locally:

- Clone and `cd` into the repo, run `npm install` to install project's dependencies.
- To run the example tests:
  - With [Cypress](https://www.cypress.io/) GUI: `npm run cy`.
  - For CI/CD pipeline: `npm run cy:ci`.

## Folder Structure:

- Tests: `cypress/tests`.
- Step implementations in code: `cypress/tests/common`.
- Cypress config file: `cypress.json`.

## How to write a Cucumber test:

1. Write your first scenario
   - Create an empty file called `Google.feature` in `cypress/tests` folder with the following content:

```feature
Feature: Google
  Background:
    When I visit "https://www.google.com/"

  Scenario: I see Google logo and search bar
    Then I see Google logo
    And I see search bar
```

- `Feature`: Name of the feature that want to test.
- `Background`: Where you can define all the actions before each scenario, similar to the `BeforeEach` hook in Cypress.
- `Scenario`: Equivalent to the `it` or `test` hook in Cypress. It defines all the subsequent tests in your `.feature` file.
- `When`, `Then`: [Gherkin Keywords](https://cucumber.io/docs/gherkin/reference/#keywords) that indidate the beginning of a step, phrase, or an assertion.

2. Write your step definitions in code that turn your `.feature` files into actions
   - In `cypress/common` folder, this would be where all the code for parsing your `.feature` files should be.
   - Create a `google.ts` file in the folder with the following content:

```typescript
import { When, Then } from 'cypress-cucumber-preprocessor/steps'

When('I visit {string}', (url: string) => cy.visit(url))

Then('I see Google logo', () => cy.get(`img[alt="Google"]`).should('be.visible'))

Then('I see search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))
```

## Learning Resources on Cucumber:

- [10 Minute Tutorial](https://cucumber.io/docs/guides/10-minute-tutorial/) on Cucumber.
- Learn more about the [Gherkin Syntax](https://cucumber.io/docs/gherkin/reference/).
- More on [Gherkin Keywords](https://cucumber.io/docs/gherkin/reference/#keywords).
