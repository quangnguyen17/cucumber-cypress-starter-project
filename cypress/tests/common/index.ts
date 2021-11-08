import { And, When, Then } from 'cypress-cucumber-preprocessor/steps'

When('I visit {string}', (url: string) => cy.visit(url))

When('I click on {string} link', (text: string) => cy.get('[data-testid=nav-link]').contains(text).click())

Then('I am redirected to {string} page', (route: string) => cy.url().should('include', route))

And('I see {string} text', (text: string) => cy.contains(text))
