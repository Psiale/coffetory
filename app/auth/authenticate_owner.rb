class AuthenticateOwner
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(owner_id: owner.id) if owner
  end

  private

  attr_reader :email, :password

  # verify user credentials
  def owner
    owner = Owner.find_by(email: email)
    return owner if owner && owner.authenticate(password)

    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end
