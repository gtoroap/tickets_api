class AuthController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate

  def authenticate
    byebug
    auth_token = AuthenticateUser.new(auth_params[:username], auth_params[:pin_code]).call
    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.require(:auth).permit(:username, :pin_code)
  end
end
