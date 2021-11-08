import { Then, And } from 'cypress-cucumber-preprocessor/steps'

Then('I see Google logo', () => cy.get(`img[alt="Google"]`).should('be.visible'))

And('I see search bar', () => cy.get(`input[title="Search"]`).should('be.visible'))
