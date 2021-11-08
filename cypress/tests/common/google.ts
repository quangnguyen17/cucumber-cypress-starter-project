import { When, Then } from 'cypress-cucumber-preprocessor/steps'

When('I visit {string}', (url: string) => cy.visit(url))

Then('I see Google logo', () => cy.get(`img[alt="Google"]`).should('be.visible'))

Then('I see search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))
