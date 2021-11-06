# cypress-cucumber-demo

- This project will show you how to write [Cypress](https://www.cypress.io/) E2E tests with [Cucumber](https://cucumber.io/) & [Typescript](https://www.typescriptlang.org/). 
- It simplifies the traditional method of writing tests by breaking it down into 2 smaller processes. 
  - Defining your test in the a `.feature` file. A **feature** file is an entry point to the Cucumber tests. This is a file where you will describe your tests in Descriptive language (Like English). A feature file can contain a scenario or can contain many scenarios in a single feature file but it usually contains a list of scenarios.
  - After your `.feature` files have been written, you can now begin to write code here that turns the phrases in your `.feature` files into concrete actions.

### Getting Started:

- Clone and `cd` into the repo, run `npm install` to install project's dependencies.
- To run the example tests:
  - With [Cypress](https://www.cypress.io/) open: `npm run cy`.
  - For CI/CD pipeline: `npm run cy:ci`.

### Folder Structure:

- Tests: `cypress/tests`.
- Step implementations: `cypress/tests/common`.
- Cypress config file: `cypress.json`.

### Dev Links & Resources:

- [Cypress](https://www.cypress.io/).
- [Cucumber](https://cucumber.io/).
- [Gherkin Syntax](https://cucumber.io/docs/gherkin/).
- [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/).
