describe('テストケース',function(){
  const getIframeBody = () => {
    return cy
      .get('iframe')
      .its('0.contentDocument.body').should('not.be.empty')
      .then(cy.wrap)
  }
  before( function() {
    cy.visit('https://eugenechangresola.github.io/WebbotPages/STG/PEP/')
  })
  after( function(){
    cy.screenshot()
  })
  it('自分テスト用', function() {
    //cy.visit('https://pep.stg.resola.net/user/login')

    //cy.get('input[name=username]').type('y.chou+stg_pep_owner@resola.ai')
    //cy.get('input[name=password]').type('Qa12345678')
    //cy.get('input').contains('ログイン').click()

    //getIframeBody().find('[name="window-box"]').should('exist')
    getIframeBody().find('.inner-box-btn-box').click()
    getIframeBody().contains('対話ノード with feedback').click()
    getIframeBody().contains('Mail here').should('exist')
  })
})
