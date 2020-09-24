describe('My First Test', () => {
  it('visit a website', () => {
    cy.visit('https://eugenetest.web.fc2.com/DEV/');
  })
  it('wait for a second', ()=> {
    cy.wait(5000);
  })
  it('go to youtube', ()=>{
    cy.visit('https://www.youtube.co.jp');
  })
  it('wait for a second', ()=> {
    cy.wait(5000);
  })
})
