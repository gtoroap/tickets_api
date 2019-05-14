class AuthenticateUser
  def initialize(username, password)
    @username = username
    @password = password
  end

  attr_reader :username, :password

  def call
    JsonWebToken.encode(user_id: user.id) if valid_user?
  end

  private

  def valid_user?
    user&.authenticate(password)
  end

  def user
    User.find_by(username: username)
  end
end
