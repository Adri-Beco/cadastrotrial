#language: pt

Funcionalidade: Cadastro teste grátis
    fazer um cadastro novo

    Cenário: Preenchi os campos

        Dado que estou na página de cadastro
        Quando preenchi os campos com "Auto Qa" e "adriana+auto@icasei.com.br" e "!Senha123"
        Então conseguir clicar em "Criar meu site"
    
    Cenário: Concluir um cadastro

        Dado que preenchi todos os campos com meu nome, email e senha
        Quando eu clicar em "Criar meu site"
        Então devo ser redirecionada a tela com o passo 1

