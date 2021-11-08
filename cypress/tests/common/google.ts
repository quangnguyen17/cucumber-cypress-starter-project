import { Then, And, Given } from 'cypress-cucumber-preprocessor/steps'

Given('I visit {string}', (url: string) => cy.visit(url))

And('I see a search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))

Then('I see a Google search button', () => cy.get(`input[value="Google Search"]`).should('be.visible'))
