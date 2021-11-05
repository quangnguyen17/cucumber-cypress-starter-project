# cypress-cucumber-demo

- A small demo project to showcase how to write [Cypress](https://www.cypress.io/) E2E tests by leveraging [Cucumber](https://cucumber.io/). It simplifies the traditional method of writing tests completely in code, enhances visibility of test cases by having the tests written in plain language and maximizes resuability of your code.

### Getting Started:

- Clone and `cd` into the repo, run `npm install` to install project's dependencies.
- To run the example tests:
  - With [Cypress](https://www.cypress.io/) open: `npm run test:e2e`.
  - For CI/CD pipeline: `npm run test:e2e:ci`.

### Folder Structure:

- Tests: `cypress/integration/tests`.
- Step implementations: `cypress/integration/common`.
- Cypress config file: `cypress.json`.

### Dev Links & Resources:

- [Cypress](https://www.cypress.io/).
- [Cucumber](https://cucumber.io/).
- [Gherkin Syntax](https://cucumber.io/docs/gherkin/).
- [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/).
