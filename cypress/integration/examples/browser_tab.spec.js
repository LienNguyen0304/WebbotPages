context('タブ切り替え',() =>{
  it('キー操作で切り替え',() => {
    cy.visit('https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/campaign.html')
    //cy.get('#synalio-campaign',{timeout: 10000}).should('be.visible')
    cy.get('iframe#synalio-iframe').should('exist')
    cy.get('iframe#synalio-iframe').contains('会話を始める').should('exist')
  })
})
