class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  before_action :authorize_request
  attr_reader :current_owner

  private

  def authorize_request
    @current_owner = (AuthorizeApiRequest.new(request.headers).call)[:owner]
  end
end
