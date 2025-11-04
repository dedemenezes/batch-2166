require_relative "../views/session_view.rb"
class SessionsController
  def initialize(employee_repository)
    @view = SessionView.new
    @employee_repo = employee_repository
  end

  def login
    # 1. Perguntar usuário(username) ()
    username = @view.ask_for("username")
    # 2. Perguntar a senha
    password = @view.ask_for("password")
    # 3. Checar se o usuário/funcionários é válido (existe)
    employee = @employee_repo.find_by_username(username)
    # p employee
    # 4. Checar se a senha está correta
    if employee && employee.password == password
      # Se a senha estiver correta
      # Imprimir boas vindas
      @view.welcome(employee)
      employee
    else
      # Se o usuário nao for válido ou a senha não estiver correta
      # Imprimir uma mensagem de erro
      @view.wrong_credentials
      # Voltar pro passo 1
      # RECURSÃO/RECURSIVIDADE
      login
    end
  end

end
