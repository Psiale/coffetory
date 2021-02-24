class AuthorizeApiRequest
  def initialize(headers = {})
    @headers = headers
  end

  # Service entry point - return valid user object

  def call
    {
      owner: owner
    }
  end

  private

  attr_reader :headers

  def owner
    # check if owner is in the db
    # memoize user object
    puts "#{decoded_auth_token}"
    @owner ||= Owner.find(decoded_auth_token[:owner_id]) if decoded_auth_token

    #handle user not found
  rescue ActiveRecord::RecordNotFound => e 
    #raise custom error
    raise(
      ExceptionHandler::InvalidToken,
      ("#{Message.invalid_token} #{e.message}")
    )
  end

  # decode authentication token 
  def decoded_auth_token
     @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
   end

   # Check for token in 'Authorization' header
   def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    end
      raise(ExceptionHandler::MissingToken, Message.missing_token)
   end
end