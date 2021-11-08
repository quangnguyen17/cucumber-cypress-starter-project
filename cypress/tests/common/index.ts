import { And, When, Given } from 'cypress-cucumber-preprocessor/steps'

When('I click on {string} button', (button: string) => cy.get(`[data-testid=${button}]`).click())

When('I type {string} in {string} input field', (text: string, input: string) => cy.get(`[data-testid=${input}]`).type(text))

Given('{string} input field is blank', (field: string) => cy.get(`[data-testid=${field}]`).should('be.empty'))

And('I see {string} form', (form: string) => cy.get(form).should('be.visible'))

And('I see {string} button', (button: string) => cy.get(button).should('be.visible'))

And('I see {string} text', (text: string) => cy.contains(text))
