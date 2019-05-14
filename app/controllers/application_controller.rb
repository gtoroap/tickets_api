class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    api_response = AuthorizeApiRequest.new(request.headers).call
    @current_user = api_response[:user]
  end
end
