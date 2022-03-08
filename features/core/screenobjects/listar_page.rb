require 'rspec/expectations'

class LoginPage
  include RSpec::Matchers

  def initialize
    load_screen 'login', 'core'
  end

  def preencher_email
  fill_in @map['email'], ('5drzi8h8@gmail.com')
  end

  def preencher_senha
  fill_in @map['senha'], ('5Drzi8h8')
  end

  def user_logado
    element_exists? @map['logado']
  end

  def clicar_em_logar
    click @map['btn_login']
  end 


end
