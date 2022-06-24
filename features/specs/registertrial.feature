#language: pt

Funcionalidade: Cadastro teste grátis
    fazer um cadastro com sucesso
    fazer um cadastro com senha inválida
    fazer um cadastro com email já cadastrado
    fazer um cadastro com email convidado
    e obter as mensagens do sistema


@sucesso
Cenário: campos com dados válidos

        Dado que estou na página de cadastro
        Quando preencho os campos com "Auto Qa" e "adriana+auto13@icasei.com.br" e "!Senha123"
        Então conseguir clicar em "Quero criar meu site"

@senha_invalida
Cenário: campo senha inválida

        Dado que estou na página de cadastro
        Quando preencho os campos com "Auto Qa" e "adriana@titi.br" e "asdqwe123"
        Então conseguir clicar em "Quero criar meu site"
        E ver o campo de senha em destaque de vermelho
        E não conseguir clicar em "Quero criar meu site"

@email_invalido
Cenário: campo email inválido

        Dado que estou na página de cadastro
        Quando preencho os campos com "Auto Qa" e "adriana/@titi,gr" e "!Senha123"
        Então conseguir clicar em "Quero criar meu site"
        E ver o campo de email em destaque de vermelho
        E a mensagem "Informe seu endereço de e-mail." 
       
@email_convidado
Cenário: Email convidado

        Dado que estou na página de cadastro
        Quando preencho os campos com "Auto Qa" e "adriana+convidado02@icasei.com.br" e "Asdqwe123@"
        Então conseguir clicar em "Quero criar meu site"
        E ver a mensagem "Ops..."
        E clicar em "Fechar"

 @email_cadastrado   
 Cenário: Email já cadastrado

        Dado que estou na página de cadastro
        Quando preencho os campos com "Auto Qa" e "adriana+065@icasei.com.br" e "!Senha123"
        Então conseguir clicar em "Quero criar meu site"
        E ser redirecionada para o painel de controle


