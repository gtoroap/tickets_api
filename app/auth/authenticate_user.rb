class AuthenticateUser
  def initialize(username, pin_code)
    @username = username
    @pin_code = pin_code
  end

  attr_reader :username, :pin_code

  def call
    JsonWebToken.encode(user_id: user.id) if valid_user?
  end

  private

  def valid_user?
    user&.authenticate(pin_code)
  end

  def user
    User.find_by(username: username)
  end

end
