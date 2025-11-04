class Employee
  # State
  # id: Integer
  # username: String
  # password: String
  # role: String => "manager", "rider"
  attr_reader :username, :password, :role

  def initialize(attributes = {})
    @id       = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
    @role     = attributes[:role]
  end

  def manager?
    @role == "manager"
  end
end
