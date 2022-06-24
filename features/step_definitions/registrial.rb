Dado('que estou na página de cadastro') do
  visit "/criar-site-de-casamento"
  find("#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelection").click
  sleep(3)
end

Quando('preencho os campos com {string} e {string} e {string}') do |name, email, pass|
  fill_in "name", with: name
  fill_in "email", with: email
  fill_in "password", with: pass
end


Então('conseguir clicar em {string}') do |string|
  click_on "sign-up-cta"
end

Então('ver o campo de senha em destaque de vermelho') do
   page.has_text?('Senha')
   #preciso achar o elementp de erro da senha
end

Então('não conseguir clicar em {string}') do |string|
  click_on "sign-up-cta"
  sleep(2)
end

Então('ver o campo de email em destaque de vermelho') do
  page.has_text?('email')
  find("#password").click
end

Então('a mensagem {string}') do |expect_message|
  alert = find(".styles__ErrorMessage-sc-1xz7v2e-6")
  expect(alert.text).to eql expect_message
end

#email_convidado
Então('ver a mensagem {string}') do |expect_message|
  within('div[role="dialog"][aria-hidden="false"]') do
      texto = find('div[role="dialog"][aria-hidden="false"] h1')
      expect(texto.text).to eql expect_message
      sleep 3
  end
end

Então('clicar em {string}') do |string|
  find('div[role="dialog"][aria-hidden="false"]:first-child button:first-child').click
end  

#email_cadastrado
Então('ser redirecionada para o painel de controle') do
  find_by_id('login-page')
  find_link(href: 'https://www.icasei.com.br/planos')
  login = find(".login-page__separador :first-child")
  expect(login.text).to eql "Entrar com:"
  #page.has_text?('Entrar com:')
  sleep 2
end
#__next > main > section > div > div.styles__Wrapper-sc-hk3dfp-0.eMiXNp > div.styles__Wrapper-sc-11scu5wv-1.hDiaSD > div > div.styles__Head-sc-1scu5wv-2.jQnfeH > h1



   












# Dado("que estou na página de cadastro") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Quando("preenchi os campos com {string} e {string} e {string}") do |string, string2, string3|
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Então("conseguir clicar em {string}") do |string|
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Dado("que preenchi todos os campos com meu nome, email e senha") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Quando("eu clicar em {string}") do |string|
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Então("devo ser redirecionada a tela com o passo {int}") do |int|
#     pending # Write code here that turns the phrase above into concrete actions
#   end