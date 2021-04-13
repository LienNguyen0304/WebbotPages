describe('Web scenario message type check', function(){
  const getIframeBody = () => {
    return cy
      .get('iframe')
      .its('0.contentDocument.body').should('not.be.empty')
      .then(cy.wrap)
  }
  before( function() {
    cy.visit('https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/')
  })
  after( function(){
    cy.screenshot()
  })
  it('Open chat bot', function(){
    getIframeBody().find('.inner-box-btn-box').click()
    getIframeBody().find('#synalio-chat-text-input').type('シナリオメッセージ確認')
    getIframeBody().find('.send-text-btn').click()
   })
  it('Type: Simple', function() {
    getIframeBody().contains('Simple').click()
    getIframeBody().contains('simple button').click()
    getIframeBody().find('.left-talk-box chat-mesage-body comp-anime-stop first-element').contains('simple button').should('be.visible')
    getIframeBody().contains('simple back').click()
    getIframeBody().find('.left-talk-box chat-mesage-body comp-anime-stop first-element').contains('simple message').should('be.visible')
    getIframeBody().contains('simple button').click()
    getIframeBody().contains('simple move').click()
    getIframeBody().find('.left-talk-box chat-mesage-body comp-anime-stop first-element').contains('simple message').should('be.visible')
    getIframeBody().contains('simple link').click()
  })
  it('Type: Text message', ()=>{
    cy.wait(5000);
  })
  it('Type: Form message', ()=> {
    cy.wait(5000);
  })
  it('Type: Script message', ()=> {
    cy.wait(5000);
  })
  it('Type: Carousel message', ()=> {
    cy.wait(5000);
  })
})
