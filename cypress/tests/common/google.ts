import { When, Then, And } from 'cypress-cucumber-preprocessor/steps'

When('I visit {string}', (url: string) => cy.visit(url))

Then('I see Google logo', () => cy.get(`img[alt="Google"]`).should('be.visible'))

And('I see search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))
