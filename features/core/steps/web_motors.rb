Dado(/^que esteja na tela de login$/) do
    @login = LoginPage.new
  end
  
  Dado(/^que escreva o meu email$/) do
    @login.preencher_email
  end
  
  Dado(/^que escreva a minha senha$/) do
    @login.preencher_senha
  end
  
  Quando(/^clicar em Login$/) do
    @login.clicar_em_logar
  end
  
  Então(/^vai ser apresentado a próxima tela$/) do
    @login.user_logado
  end