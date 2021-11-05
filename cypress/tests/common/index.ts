import { And, When } from 'cypress-cucumber-preprocessor/steps'

// When

When('I visit Rivian {string} page', (route: string) => cy.visit(`https://rivian.com${route[0] !== '/' ? `/${route}` : route}`))

When('I click on {string} button', (button: string) => cy.get(`[data-testid=${button}]`).click())

When('I type {string} in {string} input field', (text: string, input: string) => cy.get(`[data-testid=${input}]`).type(text))

// And

And('The {string} input field is blank', (field: string) => cy.get(`[data-testid=${field}]`).should('be.empty'))

And('I see {string} form', (form: string) => cy.get(form).should('be.visible'))

And('I see {string} button', (button: string) => cy.get(button).should('be.visible'))

And('I see {string} text', (text: string) => cy.contains(text))
