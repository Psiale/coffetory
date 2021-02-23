class OwnersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  def create
    owner = Owner.create!(owner_params)
    auth_token = AuthenticateOwner.new(owner.email, owner.password).call
    response = {message: Message.account_created, auth_token: auth_token}
    json_response(response, :created)
  end

  private

  def owner_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
