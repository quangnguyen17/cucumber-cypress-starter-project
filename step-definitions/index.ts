import { Given, And, Then, When } from 'cypress-cucumber-preprocessor/steps'

Given('I visit {string}', (url: string) => {
  cy.visit(url)
})

And('I see a search bar', () => {
  cy.get(`input[title="Search"]`).should('be.visible')
})

Then('I see a Google search button', () => {
  cy.get(`input[value="Google Search"]`).should('be.visible')
})

When('I click on {string} link', (text: string) => {
  cy.get('[data-testid=nav-link]').contains(text).click()
})

Then('I am redirected to {string} page', (route: string) => {
  cy.url().should('include', route)
})

And('I see {string} text', (text: string) => {
  cy.contains(text)
})
